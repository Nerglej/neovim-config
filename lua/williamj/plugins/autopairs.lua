return { 
  'windwp/nvim-autopairs',
  lazy = false,
  opts = {},
  config = function(_, opts)
    require('nvim-autopairs').setup({opts})
  end,
}
