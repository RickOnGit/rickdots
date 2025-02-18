
return {
  "kyazdani42/nvim-tree.lua",
  dependencies = { "kyazdani42/nvim-web-devicons" },
  config = function()
    -- Impostazioni di base per nvim-tree
    require("nvim-tree").setup({
      disable_netrw       = true,
      hijack_netrw        = true,
      open_on_tab         = false,
      update_focused_file = { enable = true, update_cwd = true },
      view = {
        width = 30,          -- Larghezza della finestra
        side  = "left",      -- Posizionamento a sinistra
        number = false,
        relativenumber = false,
      },
      renderer = {
        -- Abilita i marker di indentazione, per visualizzare "linee" simili all'output di tree
        indent_markers = {
          enable = true,
          icons = {
            corner = "└ ",  -- Angolo finale
            edge   = "│ ",  -- Linea verticale
            none   = "  ",  -- Spazio vuoto
          },
        },
        icons = {
          glyphs = {
            default = "",
            symlink = "",
            folder = {
              default = "",
              open    = "",
              empty   = "",
              empty_open = "",
              symlink = "",
            },
            git = {
              unstaged = "✗",
              staged   = "✓",
              unmerged = "",
              renamed  = "➜",
              untracked = "★",
              deleted  = "",
              ignored  = "◌",
            },
          },
        },
      },
      actions = {
        open_file = {
          quit_on_open = true,  -- Chiude nvim-tree quando apri un file
        },
      },
    })

    -- Imposta il colorscheme gruvbox (assicurati che il tema sia installato)
    vim.cmd("colorscheme gruvbox")
  end,
}

