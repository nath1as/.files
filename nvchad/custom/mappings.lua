---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
  },
}

local cmd = vim.cmd
-- more keybinds!

-- prettier
local keymap = vim.api.nvim_set_keymap
local opt = { noremap = true, silent = true }
keymap('n', '<C-p>', ':PrettierAsync<CR>', opt)
keymap('n', '<C-o>', ':Format<CR>', opt)
keymap('n', '<C-o>', ':Format<CR>', opt)

-- mistakes
cmd(':command! Q q')
cmd(':command! W w')
cmd(':command! Wq wq')
cmd(':command! WQ wq')

-- visual
keymap("v", "<", "<gv", opt)
keymap("v", ">", ">gv", opt)
keymap("v", "p", '"_dP', opt)

-- move selected line / block of text in visual mode
keymap('v', 'K', ':move \'<-2<CR>gv-g', opt)
keymap('v', 'J', ':move \'>+1<CR>g-g', opt)

return M
