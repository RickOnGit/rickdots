-- NUMBER
vim.opt.number = true
vim.opt.relativenumber = true

-- SYS clipboard
vim.opt.clipboard = "unnamedplus"
vim.opt.termguicolors = true
vim.opt.cursorline = true

-- LSP oriented tweaks
vim.opt.updatetime = 300
vim.opt.signcolumn = "yes"

-- TAB
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

-- WRAPPING
vim.opt.wrap = true
vim.opt.linebreak = true
vim.opt.breakindent = true
vim.opt.showbreak = "↪ "

-- VISIBLE LINES 
vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 8

-- SEARCH OPTIONS
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = false
vim.opt.incsearch = true

-- EXTRA
vim.opt.completeopt = { "menuone", "noselect" }
vim.opt.mouse = "a"
