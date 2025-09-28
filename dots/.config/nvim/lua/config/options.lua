vim.opt.number = true
vim.o.mouse = "a" -- allows mouse in all modes
vim.opt.relativenumber = true
vim.opt.clipboard = "unnamedplus"
vim.opt.termguicolors = true
vim.opt.cursorline = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.wrap = true
vim.opt.linebreak = true
vim.opt.breakindent = true
vim.opt.showbreak = "↪ "
vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 8
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.showmode = false
vim.opt.ruler = false
vim.opt.showcmd = false
vim.opt.cmdheight = 0
vim.opt.guicursor = table.concat({
  "n-v-c-sm:block",                                          -- normal/visual: block
  "i-ci-ve:ver25-Cursor",                                    -- insert modes: 25% vertical bar with 'Cursor' highlight
  "r-cr-o:hor20",                                            -- replace modes: horizontal bar
  "a:blinkwait300-blinkon400-blinkoff250",                  -- blinking for all modes
}, ",")

vim.cmd([[
  highlight! Cursor guibg=#ff880080 guifg=NONE blend=20
]])
