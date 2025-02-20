return {
  'nvim-telescope/telescope.nvim',
  tag = '0.1.8',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    local telescope = require('telescope')
    local actions = require('telescope.actions')

    telescope.setup{
      defaults = {
        mappings = {
          i = {
            -- Modalità inserimento
            ["<C-h>"] = "which_key",          -- Mostra i keybindings
            ["<C-j>"] = actions.move_selection_next,    -- Sposta la selezione in basso
            ["<C-k>"] = actions.move_selection_previous, -- Sposta la selezione in alto
            ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist, -- Manda alla quickfix list
          },
          n = {
            -- Modalità normale
            ["q"] = actions.close,            -- Chiudi Telescope con 'q'
          },
        },
      },
      pickers = {
        -- Configurazioni personalizzate per i pickers
        find_files = {
          theme = "dropdown",
        },
      },
      extensions = {
        -- Configurazioni per eventuali estensioni
      },
    }

    -- 📜 Keybindings globali per richiamare Telescope rapidamente
    local keymap = vim.keymap.set
    local opts = { noremap = true, silent = true }

    keymap('n', '<leader>ff', "<cmd>Telescope find_files<cr>", opts)  -- 🔍 Cerca file
    keymap('n', '<leader>fg', "<cmd>Telescope live_grep<cr>", opts)   -- 🔎 Cerca testo nei file
    keymap('n', '<leader>fb', "<cmd>Telescope buffers<cr>", opts)     -- 📂 Elenca buffer aperti
    keymap('n', '<leader>fh', "<cmd>Telescope help_tags<cr>", opts)   -- ❓ Cerca nella documentazione di Neovim
  end
}

