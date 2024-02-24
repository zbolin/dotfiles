vim.opt.guicursor = ""
vim.opt.guicursor = ""
vim.opt.nu = true
vim.opt.errorbells = false
vim.opt.swapfile = false
vim.opt.undodir="~/.vim/undodir"
vim.opt.cmdheight = 1
--vim.opt.relativenumber = true
--vim.opt.clipboard:append { 'unnamed', 'unnamedplus' }
vim.opt.clipboard="unnamedplus"
--vim.opt.clipboard+=unnamed  -- use the clipboards of vim and win
--vim.opt.paste = true             -- Paste from a windows or from vim
--vim.opt.go = "a"              -- Visual selection automatically copied to the clipboard

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.smartindent = true

vim.opt.wrap = false
vim.g.mapleader = " "

vim.opt.termguicolors = true
vim.g.gruvbox_material_background = 'hard'
