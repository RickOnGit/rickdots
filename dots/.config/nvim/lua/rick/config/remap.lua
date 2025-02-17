vim.g.mapleader = " "
vim.keymap.set("n", "<leader>ee", vim.cmd.Ex) 

-- --------------------------TELESCOPE KEY BINDINGS----------------------------

-- fzf for not hidden files
vim.keymap.set('n', '<leader>ff', require('telescope.builtin').find_files, { desc = '[F]ind [F]iles' })

-- fzf for hidden files
vim.keymap.set('n', '<leader>fa', function()
  require('telescope.builtin').find_files({
    hidden = true,
    no_ignore = true,
  })
end, { desc = '[F]ind [A]ll files (incl. hidden)' })

-- live_grep for not hidden files
vim.keymap.set('n', '<leader>fg', require('telescope.builtin').live_grep, { desc = '[F]ind by [G]rep' })

-- live_grep for hidden files (exludes .git dir)
vim.keymap.set('n', '<leader>fA', function()
  require('telescope.builtin').live_grep({
    additional_args = function(opts)
      return { "--hidden", "--glob", "!.git/*" }
    end,
  })
end, { desc = '[F]ind [A]ll grep (incl. hidden files)' })

-- List of open buffers
vim.keymap.set('n', '<leader>fb', require('telescope.builtin').buffers, { desc = '[F]ind [B]uffers' })

-- Find help tags
vim.keymap.set('n', '<leader>fh', require('telescope.builtin').help_tags, { desc = '[F]ind [H]elp' })

-- Repeat last Telescope research
vim.keymap.set('n', '<leader>fr', require('telescope.builtin').resume, { desc = '[F]ind [R]esume' })

-- Show avaiable commands
vim.keymap.set('n', '<leader>fc', require('telescope.builtin').commands, { desc = '[F]ind [C]ommands' })

-- Run LSP diagnostic
vim.keymap.set('n', '<leader>fd', require('telescope.builtin').diagnostics, { desc = '[F]ind [D]iagnostics' })
-------------------------------------------------------------------------------

