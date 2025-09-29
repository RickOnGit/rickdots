return {
  "sphamba/smear-cursor.nvim",
  event = "VeryLazy",
  cond = true, -- ← remove or change to allow in GUI
  opts = {
    cursor_color = "#ff8800",
    stiffness = 0.3,
    stiffness_insert_mode = 0.2,
    trailing_stiffness_insert_mode = 0.2,
    trailing_stiffness = 0.1,
    damping = 0.5,
    trailing_exponent = 5,
    never_draw_over_target = true,
    hide_target_hack = true,
    gamma = 1,
  }
}
