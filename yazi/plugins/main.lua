-- Gallery Grid Plugin for Yazi
-- Displays images in the current directory as a grid of previews

local function setup(state)
	return ya.sync(function()
		state.columns = 3
		state.rows = 2
		state.current_page = 0
	end)
end

-- Helper function to check if a file is an image
local function is_image(url)
	local ext = url:name():match("%.([^.]+)$")
	if not ext then
		return false
	end
	ext = ext:lower()
	local image_exts = {
		jpg = true, jpeg = true, png = true, gif = true,
		bmp = true, webp = true, svg = true, ico = true,
		tiff = true, tif = true, avif = true, heic = true
	}
	return image_exts[ext] or false
end

-- Get all image files in the current directory
local function get_images()
	local cwd = cx.active.current.cwd
	local items = fs.read_dir(cwd, { follow = true })
	if not items then
		return {}
	end

	local images = {}
	for _, item in ipairs(items) do
		if item.cha.is_file and is_image(item.url) then
			table.insert(images, item.url)
		end
	end

	table.sort(images, function(a, b)
		return a:name() < b:name()
	end)

	return images
end

-- Main entry point for the plugin
local function entry(state)
	local images = get_images()

	if #images == 0 then
		ya.notify({
			title = "Gallery Grid",
			content = "No images found in current directory",
			timeout = 3,
			level = "warn"
		})
		return
	end

	local total_cells = state.columns * state.rows
	local total_pages = math.ceil(#images / total_cells)

	-- Ensure current page is valid
	if state.current_page >= total_pages then
		state.current_page = total_pages - 1
	end
	if state.current_page < 0 then
		state.current_page = 0
	end

	local start_idx = state.current_page * total_cells + 1
	local end_idx = math.min(start_idx + total_cells - 1, #images)

	-- Create the layout
	local area = ui.Rect.default

	-- Calculate grid dimensions
	local cell_width = math.floor(area.w / state.columns)
	local cell_height = math.floor(area.h / state.rows)

	-- Display images in grid
	local idx = start_idx
	for row = 0, state.rows - 1 do
		for col = 0, state.columns - 1 do
			if idx > end_idx then
				break
			end

			local x = area.x + col * cell_width
			local y = area.y + row * cell_height
			local rect = ui.Rect({
				x = x,
				y = y,
				w = cell_width - 1,
				h = cell_height - 1
			})

			ya.image_show(images[idx], rect)
			idx = idx + 1
		end
		if idx > end_idx then
			break
		end
	end

	-- Show page info
	ya.notify({
		title = "Gallery Grid",
		content = string.format("Page %d/%d (%d images)",
			state.current_page + 1, total_pages, #images),
		timeout = 2,
		level = "info"
	})
end

-- Navigate to next page
local function next_page(state)
	local images = get_images()
	local total_cells = state.columns * state.rows
	local total_pages = math.ceil(#images / total_cells)

	state.current_page = state.current_page + 1
	if state.current_page >= total_pages then
		state.current_page = 0
	end

	entry(state)
end

-- Navigate to previous page
local function prev_page(state)
	local images = get_images()
	local total_cells = state.columns * state.rows
	local total_pages = math.ceil(#images / total_cells)

	state.current_page = state.current_page - 1
	if state.current_page < 0 then
		state.current_page = total_pages - 1
	end

	entry(state)
end

-- Adjust grid columns
local function set_columns(state, count)
	state.columns = math.max(1, math.min(10, count))
	entry(state)
end

-- Adjust grid rows
local function set_rows(state, count)
	state.rows = math.max(1, math.min(10, count))
	entry(state)
end

return {
	setup = setup,
	entry = entry,
	next_page = next_page,
	prev_page = prev_page,
	set_columns = set_columns,
	set_rows = set_rows,
}
