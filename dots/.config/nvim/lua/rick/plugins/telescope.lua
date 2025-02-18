-- File: lua/plugins/telescope.lua
return {
  {
    "nvim-telescope/telescope.nvim",
    lazy = false, -- carica subito il plugin per assicurare che 'telescope.builtin' sia disponibile
    dependencies = {
      "nvim-lua/plenary.nvim",
      { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
      "nvim-tree/nvim-web-devicons",
    },
    config = function()
      local telescope = require("telescope")
      telescope.setup({
        defaults = {
          prompt_prefix = " ",
          selection_caret = " ",
          path_display = { "smart" },
        },
      })

      telescope.load_extension("fzf")

      -- Definizione delle keybindings per Telescope:
      local builtin = require("telescope.builtin")

      -- Cerca file nel progetto (find_files)
      vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = '[F]ind [F]iles' })

      -- Cerca testo in tempo reale all'interno dei file (live_grep)
      vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = '[F]ind by [G]rep' })

      -- Elenco dei buffer aperti
      vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = '[F]ind [B]uffers' })

      -- Cerca tra i tag di aiuto
      vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = '[F]ind [H]elp' })

      -- Riprendi l'ultima ricerca eseguita con Telescope
      vim.keymap.set('n', '<leader>fr', builtin.resume, { desc = '[F]ind [R]esume' })

      -- Visualizza i comandi disponibili
      vim.keymap.set('n', '<leader>fc', builtin.commands, { desc = '[F]ind [C]ommands' })

      -- (Opzionale) Visualizza le diagnostiche (se usi LSP)
      vim.keymap.set('n', '<leader>fd', builtin.diagnostics, { desc = '[F]ind [D]iagnostics' })

      -- Cerca file inclusi quelli nascosti
      vim.keymap.set('n', '<leader>fa', function()
        builtin.find_files({
          hidden = true,
          no_ignore = true,
        })
      end, { desc = '[F]ind [A]ll files (incl. hidden)' })

      -- Cerca testo (live_grep) inclusi file nascosti (esclude .git)
      vim.keymap.set('n', '<leader>fA', function()
        builtin.live_grep({
          additional_args = function(opts)
            return { "--hidden", "--glob", "!.git/*" }
          end,
        })
      end, { desc = '[F]ind [A]ll grep (incl. hidden files)' })
    end,
  },
}

