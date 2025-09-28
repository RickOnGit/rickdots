vim.g.mapleader = " "
local keymap = vim.keymap -- for conciseness
local opts = { noremap = true, silent = true }
local term_opts = { silent = true }
keymap.set('i', 'jk', '<esc>', opts)
keymap.set('n', '<leader>c', ':nohlsearch<cr>', opts)
keymap.set('n', '<leader>n', ':enew<cr>', opts)

keymap.set("n", "<leader>l", "<cmd>Lazy<cr>", { desc = "open lazy plugin manager" })

keymap.set("n", "<leader>r", "<cmd>source %<cr>", { desc = "source current file" })

keymap.set("n", "<leader>a", "ggVG", { desc = "select entire buffer" })

vim.keymap.set("n", "p", "p=`]", { desc = "Paste and auto-indent" })
vim.keymap.set("n", "P", "P=`]", { desc = "Paste before and auto-indent" })

vim.api.nvim_create_autocmd("BufWritePre", {
  callback = function()
    vim.cmd("normal! gg=G")
  end,
})
