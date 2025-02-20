return {
  'catppuccin/nvim',
  lazy = false,
  name = 'catppuccin',
  priority = 1000,
  opts = {
    flavour = 'macchiato',
    transparent_background = true,
    integrations = {
      mini = true,
      snacks = true,
      treesitter = true,
      which_key = true
    }
  },
  config = function(_, opts)
    require('catppuccin').setup(opts)

    vim.cmd 'colorscheme catppuccin'
  end
}
