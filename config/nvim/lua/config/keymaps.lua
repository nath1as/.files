local keymap = vim.api.nvim_set_keymap
local cmd = vim.cmd
local opt = { noremap = true, silent = true }

-- control buffers
keymap("n", "<C-h>", ":bn<CR>", opt)
keymap("n", "<C-l>", ":bp<CR>", opt)
keymap("n", "<C-x>", ":bd<CR>", opt)

-- remap to defaults
keymap("n", "<S-h>", "H", opt)
keymap("n", "<S-l>", "L", opt)

-- mistakes
cmd(":command! Q q")
cmd(":command! W w")
cmd(":command! Wq wq")
cmd(":command! WQ wq")

-- visual
keymap("v", "<", "<gv", opt)
keymap("v", ">", ">gv", opt)
keymap("v", "p", '"_dP', opt)

-- unmap space and enter
keymap("n", "<Space>", "<NOP>", opt)
keymap("n", "<Enter>", "<NOP>", opt)

-- prettier
keymap("n", "<C-p>", ":PrettierAsync<CR>", opt)

-- explorer
keymap("n", "<Leader><Leader>", ":RnvimrToggle<CR>", opt)

-- move selected line / block of text in visual mode
keymap("v", "K", ":move '<3<CR>gv-g", opt)
keymap("v", "J", ":move '>+6<CR>g-g", opt)

-- highlight everything
keymap("n", "<C-a>", "ggVG", opt)
keymap("i", "<C-a>", "<Esc>ggVG", opt)

-- vimtex
keymap("n", "<Leader>lc", ":VimtexCompile<CR>", opt)
keymap("n", "<Leader>ls", ":VimtexCompileSelected<CR>", opt)
keymap("n", "<Leader>li", ":VimtexInfo<CR>", opt)
keymap("n", "<Leader>lt", ":VimtexTocToggle<CR>", opt)
keymap("n", "<Leader>lv", ":VimtexView<CR>", opt)

-- markdown
keymap("n", "<Leader>mp", ":Glow<CR>", opt)
