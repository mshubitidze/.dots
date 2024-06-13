return {
  'EdenEast/nightfox.nvim',
  priority = 1000,
  config = function()
    require('nightfox').setup {
      palettes = {
        -- Custom duskfox with black background
        duskfox = {
          bg1 = '#000000', -- Black background
          bg0 = '#000000', -- Alt backgrounds (floats, statusline, ...)
          bg3 = '#121820', -- 55% darkened from stock
          sel0 = '#131b24', -- 55% darkened from stock
        },
      },
      specs = {
        all = {
          inactive = 'bg0', -- Default value for other styles
        },
        duskfox = {
          inactive = '#090909', -- Slightly lighter then black background
        },
      },
      groups = {
        all = {
          NormalNC = { fg = 'fg1', bg = 'inactive' }, -- Non-current windows
        },
      },
    }
    vim.cmd.colorscheme 'duskfox'

    vim.cmd.hi 'Comment gui=none'
  end,
}
