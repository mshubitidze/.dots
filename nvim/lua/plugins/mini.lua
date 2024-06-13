return {
  'echasnovski/mini.statusline',
  version = '*',
  opts = {
    use_icons = vim.g.have_nerd_font
  },
  -- config = function()
  --   require('mini.statusline').setup {}
  -- require('mini.ai').setup { n_lines = 500 }

  -- require('mini.surround').setup()

  -- local statusline = require 'mini.statusline'
  -- statusline.setup {}
  -- statusline.setup { use_icons = vim.g.have_nerd_font }
  --
  -- ---@diagnostic disable-next-line: duplicate-set-field
  -- statusline.section_location = function()
  --   return '%2l:%-2v'
  -- end
  -- end,
}
