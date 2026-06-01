return {
  'christoomey/vim-tmux-navigator',
  cmd = { 'TmuxNavigateLeft', 'TmuxNavigateRight', 'TmuxNavigateDown', 'TmuxNavigateUp' },
  keys = {
    {
      '<C-h>',
      function()
        if vim.fn.executable 'tmux' == 1 and vim.env.TMUX then
          vim.cmd.TmuxNavigateLeft()
        else
          vim.cmd.wincmd 'h'
        end
      end,
      desc = 'Left window/tmux',
    },
    {
      '<C-j>',
      function()
        if vim.fn.executable 'tmux' == 1 and vim.env.TMUX then
          vim.cmd.TmuxNavigateDown()
        else
          vim.cmd.wincmd 'j'
        end
      end,
      desc = 'Down window/tmux',
    },
    {
      '<C-k>',
      function()
        if vim.fn.executable 'tmux' == 1 and vim.env.TMUX then
          vim.cmd.TmuxNavigateUp()
        else
          vim.cmd.wincmd 'k'
        end
      end,
      desc = 'Up window/tmux',
    },
    {
      '<C-l>',
      function()
        if vim.fn.executable 'tmux' == 1 and vim.env.TMUX then
          vim.cmd.TmuxNavigateRight()
        else
          vim.cmd.wincmd 'l'
        end
      end,
      desc = 'Right window/tmux',
    },
  },
}
