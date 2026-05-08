return {
  'catppuccin/nvim',
  name = 'catppuccin',
  priority = 1000,
  config = function()
    require('catppuccin').setup {
      flavour = 'mocha',
      transparent_background = false,
      term_colors = true,
      styles = {
        comments = { 'italic' },
        conditionals = { 'italic' },
      },
      integrations = {
        cmp = true,
        gitsigns = true,
        nvimtree = false,
        telescope = {
          enabled = true,
          style = 'nvchad',
        },
        which_key = true,
        indent_blankline = {
          enabled = true,
          colored_indent_levels = false,
        },
        mini = true,
        treesitter = true,
        fidget = true,
        dap = true,
        dap_ui = true,
        native_lsp = {
          enabled = true,
          virtual_text = {
            errors = { 'italic' },
            hints = { 'italic' },
            warnings = { 'italic' },
            information = { 'italic' },
            ok = { 'italic' },
          },
          underlines = {
            errors = { 'underline' },
            hints = { 'underline' },
            warnings = { 'underline' },
            information = { 'underline' },
            ok = { 'underline' },
          },
        },
      },
      color_overrides = {
        mocha = {
          base = '#1e1e2e',
          mantle = '#181825',
          crust = '#11111b',
        },
      },
      custom_highlights = function(colors)
        return {
          LineNr = { fg = colors.surface0 },
          CursorLineNr = { fg = colors.blue, style = { 'bold' } },
          SignColumn = { bg = colors.base },
          StatusLine = { bg = colors.mantle },
          StatusLineNC = { bg = colors.mantle, fg = colors.surface0 },
          Pmenu = { bg = colors.mantle, fg = colors.text },
          PmenuSel = { bg = colors.surface0, fg = colors.blue },
          PmenuSbar = { bg = colors.surface0 },
          PmenuThumb = { bg = colors.surface2 },
          FloatBorder = { fg = colors.surface0, bg = colors.mantle },
          NormalFloat = { bg = colors.mantle },
          TelescopeBorder = { fg = colors.surface0, bg = colors.mantle },
          TelescopePromptBorder = { fg = colors.surface0, bg = colors.mantle },
          TelescopeResultsBorder = { fg = colors.surface0, bg = colors.mantle },
          TelescopePreviewBorder = { fg = colors.surface0, bg = colors.mantle },
          TelescopePromptTitle = { fg = colors.blue, bg = colors.mantle },
          TelescopeResultsTitle = { fg = colors.blue, bg = colors.mantle },
          TelescopePreviewTitle = { fg = colors.blue, bg = colors.mantle },
        }
      end,
    }
    vim.cmd.colorscheme 'catppuccin'
  end,
}
