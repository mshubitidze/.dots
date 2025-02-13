return {
  {
    'supermaven-inc/supermaven-nvim',
    config = function()
      require('supermaven-nvim').setup {
        keymaps = {
          accept_suggestion = '<C-g>',
          clear_suggestion = '<C-]>',
        },
        ignore_filetypes = { cpp = true, tmux = true },
        color = {
          cterm = 244,
        },
      }
    end,
  },
}
