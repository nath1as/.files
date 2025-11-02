vim.g.tokyonight_transparent = true
vim.wo.number = true
vim.wo.relativenumber = true
vim.wo.cursorline = true
vim.cmd("au TermOpen * setlocal nospell")
vim.cmd("set spell")
vim.g.vim_svelte_plugin_load_full_syntax = 1
vim.g.mkdp_auto_start = 1
vim.g.mkdp_auto_close = 1
vim.loader.enable()

local o = vim.opt

o.hidden = true
o.wrap = true
o.encoding = "utf-8"
o.pumheight = 10
o.fileencoding = "utf-8"
o.ruler = true
o.cmdheight = 2
o.mouse = "a"
o.splitbelow = true
o.splitright = true
o.conceallevel = 0
o.tabstop = 2
o.shiftwidth = 2
o.smarttab = true
o.expandtab = true
o.smartindent = true
o.autoindent = true
o.laststatus = 2
o.background = "dark"
o.showtabline = 2
o.showmode = false
o.backup = false
o.writebackup = false
o.signcolumn = "yes"
o.updatetime = 100
o.clipboard = "unnamedplus"
o.incsearch = true
o.nu = true
o.shortmess = "aoOtIWcFs"
o.wildmenu = true
o.wildmode = "longest:list,full"
o.smartcase = true
o.magic = true
o.undofile = true
o.undodir = "/home/nathias/.vim/undodir"
o.termguicolors = true
o.updatetime = 300
o.redrawtime = 10000
