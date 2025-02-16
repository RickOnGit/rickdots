return {
  {
    "ellisonleao/gruvbox.nvim",
    priority = 1000, -- Assicura che il tema venga caricato prima degli altri plugin
    config = function()
      require("gruvbox").setup({
        contrast = "hard", -- Puoi scegliere tra "soft", "medium" o "hard"
        transparent_mode = false, -- Se true, lo sfondo sarà trasparente
      })
      vim.cmd("colorscheme gruvbox") -- Imposta Gruvbox come tema predefinito
    end,
  },
}
