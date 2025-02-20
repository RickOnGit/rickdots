return{
  'MeanderingProgrammer/render-markdown.nvim',
  dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.nvim' }, -- if you use the mini.nvim suite
  config = function()
    require('render-markdown').setup({
      render_modes = true,
      enabled = true,
      preset = 'obsidian',
      anti_conceal = { enabled = false },
    })
  end,
}
