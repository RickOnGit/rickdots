return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local lualine = require("lualine")
    local lazy_status = require("lazy.status")

    local colors = {
      blue = "#83A497",
      green = "#B7BA72",
      violet = "#D2869B",
      yellow = "#F9BC7F",
      red = "#FA4859",
      fg = "#A79883",
      bg = "#7B6F63",
      inactive_bg = "#504944",
    }

    lualine.setup({
        options = {
          theme = 'gruvbox-material'
      },
      sections = {
        lualine_x = {
          {
            lazy_status.updates,
            cond = lazy_status.has_updates,
            color = { fg = "#ff9e64" },
          },
          { "encoding" },
          { "fileformat" },
          { "filetype" },
        },
      },
    })
  end,
}
