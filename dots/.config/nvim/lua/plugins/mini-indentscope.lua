return {
  "nvim-mini/mini.indentscope",
  version = false,
  opts = {
    symbol = "|",
    options = { try_as_border = true },
  },
  init = function()
    vim.api.nvim_create_autocmd("FileType", {
      pattern = {
        "help",
        "alpha",
        "dashboard",
        "NvimTree",
        "Trouble",
        "trouble",
        "lazy",
        "mason",
        "notify",
        "toggleterm",
        "lazyterm",
      },
      callback = function()
        vim.b.miniindentscope_disable = true
      end,
    })
  end,
  config = function(_, opts)
    require("mini.indentscope").setup(opts)
    vim.api.nvim_set_hl(0, "MiniIndentscopeSymbol", { fg = "#b994f6" })
  end,
}
