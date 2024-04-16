-- return {
--   'catppuccin/nvim',
--   name = 'catppuccin',
--   priority = 1000,
--   opts = {
--     -- color_overrides = {
--     --   mocha = {
--     --     base = '#000000',
--     --     mantle = '#000000',
--     --     crust = '#000000',
--     --   },
--     -- },
--     integrations = {
--       mini = {
--         enabled = true,
--       },
--     },
--   },
--   init = function()
--     vim.cmd.colorscheme 'catppuccin-latte'
--     -- vim.cmd.colorscheme 'catppuccin-mocha'
--
--     vim.cmd.hi 'Comment gui=none'
--   end,
-- }

return {
  'EdenEast/nightfox.nvim',
  priority = '1000',
  init = function()
    -- vim.cmd.colorscheme 'dayfox'
    vim.cmd.colorscheme 'nightfox'

    vim.cmd.hi 'Comment gui=none'
  end,
}
