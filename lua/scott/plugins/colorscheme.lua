return {
  'catppuccin/nvim',
  name = 'catppuccin',
  priority = 1000,
  config = function()
    require('catppuccin').setup {
      flavour = 'mocha',
      transparent_background = true,
      show_end_of_buffer = false,
      term_colors = true,
      dim_inactive = {
        enabled = false,
        shade = 'dark',
        percentage = 0.15,
      },
      no_italic = false,
      no_bold = false,
      no_underline = false,
      styles = {
        comments = { 'italic' },
        conditionals = { 'italic' },
        loops = {},
        functions = {},
        keywords = {},
        strings = {},
        variables = {},
        numbers = {},
        booleans = {},
        properties = {},
        types = {},
        operators = {},
      },
      color_overrides = {},
      custom_highlights = {
        LineNr = { fg = '#6c7086' },
        CursorLineNr = { fg = '#cba6f7', style = { 'bold' } },
        SignColumn = {},
        Pmenu = { bg = '#1e1e2e' },
        PmenuSel = { bg = '#313244', fg = '#cdd6f4', style = { 'bold' } },
        PmenuSbar = { bg = '#45475a' },
        PmenuThumb = { bg = '#585b70' },
        NormalFloat = { bg = '#1e1e2e' },
        FloatBorder = { fg = '#585b70', bg = '#1e1e2e' },
      },
    }
    vim.cmd.colorscheme 'catppuccin'
  end,
}
