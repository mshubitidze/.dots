return {
  {
    'catppuccin/nvim',
    name = 'catppuccin',
    priority = 1000,
    config = function()
      require('catppuccin').setup {
        color_overrides = {
          latte = {},
          frappe = {},
          macchiato = {},
          -- mocha = {
          --   base = '#171717',
          --   mantle = '#171717',
          --   crust = '#171717',
          -- },
        },
      }
      vim.cmd.colorscheme 'catppuccin-mocha'
      vim.cmd.hi 'Comment gui=none'
    end,
  },
}
