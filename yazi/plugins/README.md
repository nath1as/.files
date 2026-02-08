# Gallery Grid - Yazi Plugin

A yazi plugin that displays images in the current directory as a grid of previews, similar to gallery programs or GUI file explorers.

## Features

- Display images in a customizable grid layout
- Navigate between pages of images
- Adjust grid dimensions (rows and columns)
- Works with modern terminals that support image display (kitty, iTerm2, WezTerm, etc.)
- Supports common image formats: JPG, PNG, GIF, BMP, WebP, SVG, TIFF, AVIF, HEIC

## Installation

1. Copy the `gallery-grid.yazi` directory to your yazi plugins directory:

**Linux/macOS:**
```bash
cp -r gallery-grid.yazi ~/.config/yazi/plugins/
```

**Windows:**
```powershell
Copy-Item -Recurse gallery-grid.yazi "$env:APPDATA\yazi\config\plugins\"
```

2. Add keybindings to your `~/.config/yazi/keymap.toml`:

```toml
[[manager.prepend_keymap]]
on = [ "g", "g" ]
run = "plugin gallery-grid"
desc = "Show gallery grid"

[[manager.prepend_keymap]]
on = [ "g", "n" ]
run = "plugin gallery-grid --args=next_page"
desc = "Next page of gallery"

[[manager.prepend_keymap]]
on = [ "g", "p" ]
run = "plugin gallery-grid --args=prev_page"
desc = "Previous page of gallery"

[[manager.prepend_keymap]]
on = [ "g", "+" ]
run = "plugin gallery-grid --args='set_columns 4'"
desc = "Set 4 columns"

[[manager.prepend_keymap]]
on = [ "g", "-" ]
run = "plugin gallery-grid --args='set_columns 2'"
desc = "Set 2 columns"
```

## Usage

1. Navigate to a directory containing images using yazi
2. Press `gg` to open the gallery grid view
3. Use `gn` to go to the next page of images
4. Use `gp` to go to the previous page of images
5. Use `g+` or `g-` to adjust the number of columns

## Configuration

The default grid layout is 3 columns × 2 rows (6 images per page). You can customize this by calling the plugin with different methods:

```toml
# Example: 4×3 grid (12 images per page)
run = "plugin gallery-grid --args='set_columns 4'"
run = "plugin gallery-grid --args='set_rows 3'"
```

## Requirements

- Yazi file manager
- Terminal with image display support (kitty protocol or similar)
- Image files in standard formats

## Customization

You can modify the `main.lua` file to:
- Change default grid dimensions (edit `state.columns` and `state.rows`)
- Add support for additional image formats (edit the `image_exts` table)
- Customize notification messages
- Adjust spacing between images

## Troubleshooting

**Images not displaying:**
- Ensure your terminal supports image display (try kitty, iTerm2, or WezTerm)
- Check that yazi can display single image previews normally
- Verify that the image files are in supported formats

**Plugin not loading:**
- Ensure the plugin directory is named `gallery-grid.yazi`
- Check that `main.lua` is in the correct location
- Verify keybindings in `keymap.toml` are correct

## License

MIT License - See LICENSE file for details
