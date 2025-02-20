vim.g.mapleader = " "
vim.g.maplocalleader = " "

local opts = { noremap = true, silent = true }
local term_opts = { silent = true }

-- Navigazione tra le split
vim.keymap.set('n', '<C-h>', '<C-w>h', opts)
vim.keymap.set('n', '<C-j>', '<C-w>j', opts)
vim.keymap.set('n', '<C-k>', '<C-w>k', opts)
vim.keymap.set('n', '<C-l>', '<C-w>l', opts)

-- Ridimensionamento delle split
vim.keymap.set('n', '<C-Up>', ':resize -2<CR>', opts)
vim.keymap.set('n', '<C-Down>', ':resize +2<CR>', opts)
vim.keymap.set('n', '<C-Left>', ':vertical resize -2<CR>', opts)
vim.keymap.set('n', '<C-Right>', ':vertical resize +2<CR>', opts)

-- Navigazione tra i buffer
vim.keymap.set('n', '<S-l>', ':bnext<CR>', opts)
vim.keymap.set('n', '<S-h>', ':bprevious<CR>', opts)

-- Modalità Insert: esci rapidamente premendo "jk"
vim.keymap.set('i', 'jk', '<Esc>', opts)

-- Salvataggio rapido in modalità normale, inserimento e visuale
vim.keymap.set('n', '<C-s>', ':w<CR>', opts)
vim.keymap.set('i', '<C-s>', '<Esc>:w<CR>a', opts)
vim.keymap.set('v', '<C-s>', '<Esc>:w<CR>gv', opts)

-- Cancellare l'evidenziazione della ricerca
vim.keymap.set('n', '<leader>c', ':nohlsearch<CR>', opts)

-- Mappature in modalità visuale
-- Mantenere la selezione dopo l'indentazione
vim.keymap.set('v', '<', '<gv', opts)
vim.keymap.set('v', '>', '>gv', opts)
-- Spostare le righe selezionate
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv", opts)
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv", opts)

-- Mantenere il cursore al centro durante la ricerca
vim.keymap.set('n', 'n', 'nzzzv', opts)
vim.keymap.set('n', 'N', 'Nzzzv', opts)

-- Terminale integrato: apri una split con terminale
vim.keymap.set('n', '<leader>t', ':split | terminal<CR>', opts)
vim.keymap.set('t', '<Esc>', [[<C-\><C-n>]], term_opts)

-- Ricarica la configurazione (utile per test rapidi)
vim.keymap.set('n', '<leader>r', ':source $myvimrc<cr>', opts)

-- nuovo buffer

vim.keymap.set('n', '<leader>n', ':enew<cr>', opts)


-- 🔑 Keymap per aprire il greeter di alpha-nvim
vim.keymap.set('n', '<leader>ga', function()
  require('alpha').start(false)
end, { desc = 'Apri Alpha Greeter' })
