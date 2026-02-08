--- @sync entry

-- Gallery Grid Plugin for Yazi
-- Displays images in the current directory as a grid of previews

-- Image extensions lookup
local image_exts = {
	jpg = true, jpeg = true, png = true, gif = true,
	bmp = true, webp = true, svg = true, ico = true,
	tiff = true, tif = true, avif = true, heic = true
}

-- Helper function to check if a file is an image
local function is_image(name)
	local ext = name:match("%.([^.]+)$")
	if not ext then
		return false
	end
	ext = ext:lower()
	return image_exts[ext] or false
end

-- State stored at module level
local state = {
	columns = 3,
	rows = 2,
	current_page = 0
}

local M = {}

function M:entry(job)
	ya.notify({
		title = "Gallery Grid",
		content = "Step 1: Starting",
		timeout = 3,
		level = "info"
	})

	-- Try to access folder
	local folder = cx.active.current

	ya.notify({
		title = "Gallery Grid",
		content = "Step 1.5: Got folder",
		timeout = 3,
		level = "info"
	})

	-- Get image URLs from current directory (sync context, no need for ya.sync)
	local images = {}
	local total_files = #folder.files

	ya.notify({
		title = "Gallery Grid",
		content = "Step 1.7: Total files = " .. total_files,
		timeout = 3,
		level = "info"
	})

	local ok, err = pcall(function()
		for i = 1, total_files do
			local file = folder.files[i]
			local name = tostring(file.url)
			if not file.cha.is_dir and is_image(name) then
				table.insert(images, file.url)
			end
		end
	end)

	if not ok then
		ya.notify({
			title = "Gallery Grid ERROR",
			content = "Loop failed: " .. tostring(err),
			timeout = 10,
			level = "error"
		})
		return
	end

	ya.notify({
		title = "Gallery Grid",
		content = "Step 2: Found " .. total_files .. " files, " .. #images .. " images",
		timeout = 5,
		level = "info"
	})

	ya.notify({
		title = "Gallery Grid",
		content = "Found " .. #images .. " images",
		timeout = 5,
		level = "info"
	})

	if #images == 0 then
		ya.notify({
			title = "Gallery Grid",
			content = "No images found in current directory",
			timeout = 3,
			level = "warn"
		})
		return
	end

	-- Handle command arguments
	local cmd = job.args[1]
	if cmd == "next_page" then
		local total_cells = state.columns * state.rows
		local total_pages = math.ceil(#images / total_cells)
		state.current_page = (state.current_page + 1) % total_pages
	elseif cmd == "prev_page" then
		local total_cells = state.columns * state.rows
		local total_pages = math.ceil(#images / total_cells)
		state.current_page = state.current_page - 1
		if state.current_page < 0 then
			state.current_page = total_pages - 1
		end
	elseif cmd == "set_columns" then
		local count = tonumber(job.args[2])
		if count then
			state.columns = math.max(1, math.min(10, count))
		end
	elseif cmd == "set_rows" then
		local count = tonumber(job.args[2])
		if count then
			state.rows = math.max(1, math.min(10, count))
		end
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

	-- Try to get terminal dimensions
	-- For now, use a reasonable default size
	local w, h = 100, 30

	ya.notify({
		title = "Gallery Grid",
		content = "About to display " .. (end_idx - start_idx + 1) .. " images",
		timeout = 2,
		level = "info"
	})

	-- Calculate grid dimensions
	local cell_width = math.floor(w / state.columns)
	local cell_height = math.floor(h / state.rows)

	-- Display images in grid
	local idx = start_idx
	local displayed = 0
	for row = 0, state.rows - 1 do
		for col = 0, state.columns - 1 do
			if idx > end_idx then
				break
			end

			local x = col * cell_width
			local y = row * cell_height
			local rect = ui.Rect {
				x = x,
				y = y,
				w = cell_width - 2,
				h = cell_height - 2
			}

			local ok, err = pcall(function()
				ya.image_show(images[idx], rect)
			end)

			if ok then
				displayed = displayed + 1
			else
				ya.notify({
					title = "Gallery Grid",
					content = "Image show error: " .. tostring(err),
					timeout = 10,
					level = "error"
				})
				return
			end

			idx = idx + 1
		end
		if idx > end_idx then
			break
		end
	end

	ya.notify({
		title = "Gallery Grid",
		content = "Displayed " .. displayed .. " images",
		timeout = 5,
		level = "info"
	})

	-- Show page info
	ya.notify({
		title = "Gallery Grid",
		content = string.format("Page %d/%d (%d images, %dx%d grid)",
			state.current_page + 1, total_pages, #images, state.columns, state.rows),
		timeout = 2,
		level = "info"
	})
end

return M
