-- enable relative line numbers
vim.opt.nu = true
vim.opt.relativenumber = true

-- 4 space tabs
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- auto indent when inserting new line
vim.opt.smartindent = true

-- disable search highlighing
-- enable case sensitive search
vim.opt.hlsearch = false
vim.opt.incsearch = true

-- enable true colors
vim.opt.termguicolors = true

vim.opt.scrolloff = 10
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50
vim.opt.colorcolumn = "80"

vim.g.mapleader = " "
