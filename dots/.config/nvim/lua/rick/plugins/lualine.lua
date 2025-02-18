
return {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" }, -- Per le icone
    config = function()
        require("lualine").setup({
            options = {
                theme = "gruvbox", -- Usa il tema Gruvbox
                icons_enabled = true,
                component_separators = { left = "", right = "" },
                section_separators = { left = "", right = "" },
            },
            sections = {
                lualine_a = { "mode" },        -- Mostra la modalità attuale (Normal, Insert, etc.)
                lualine_b = { "branch", "diff", "diagnostics" }, -- Git branch, diff e LSP diagnostics
                lualine_c = { { "filename", path = 1 } }, -- Mostra il nome del file con percorso relativo
                lualine_x = { "encoding", "fileformat", "filetype" }, -- Info sul file
                lualine_y = { "progress" },   -- Percentuale di avanzamento nel file
                lualine_z = { "location" },   -- Riga e colonna attuali
            },
            inactive_sections = {
                lualine_a = {},
                lualine_b = {},
                lualine_c = { "filename" },
                lualine_x = { "location" },
                lualine_y = {},
                lualine_z = {},
            },
            extensions = { "nvim-tree", "quickfix" }, -- Estende il supporto per NvimTree e QuickFix
        })
    end,
}

