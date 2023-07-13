---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
  },
}

-- more keybinds!

-- prettier
local keymap = vim.api.nvim_set_keymap
local opt = { noremap = true, silent = true }
keymap('n', '<C-p>', ':PrettierAsync<CR>', opt)
keymap('n', '<C-o>', ':Format<CR>', opt)

return M
