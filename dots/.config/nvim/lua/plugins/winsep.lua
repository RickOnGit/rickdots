return {
  "nvim-zh/colorful-winsep.nvim",
  event = { "WinLeave" },
  config = function()
    vim.api.nvim_set_hl(0, "WinSeparatorCustom", { fg = "#FF8800", bold = true })
    require("colorful-winsep").setup({
      -- choose between "single", "rounded", "bold" and "double".
      -- Or pass a table like this: { "─", "│", "┌", "┐", "└", "┘" },
      border = "bold",
      excluded_ft = { "packer", "TelescopePrompt", "mason" },
      highlight = "WinSeparatorCustom", -- nil|string|function. See the docs's Highlights section
      animate = {
        enabled = "shift", -- false to disable, or choose a option below (e.g. "shift") and set option for it if needed
        shift = {
          delta_time = 0.1,
          smooth_speed = 1,
          delay = 3,
        },
        progressive = {
          -- animation's speed for different direction
          vertical_delay = 20,
          horizontal_delay = 2,
        },
      },
      indicator_for_2wins = {
        -- only work when the total of windows is two
        position = "center", -- false to disable or choose between "center", "start", "end" and "both"
        symbols = {
          -- the meaning of left, down ,up, right is the position of separator
          start_left = "󱞬",
          end_left = "󱞪",
          start_down = "󱞾",
          end_down = "󱟀",
          start_up = "󱞢",
          end_up = "󱞤",
          start_right = "󱞨",
          end_right = "󱞦",
        },
      },
    })
  end,
}
