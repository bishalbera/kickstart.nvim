function ColorMyPencils(color)
  color = color or 'tokyonight' -- Set tokyonight as the default color scheme
  vim.cmd.colorscheme(color)

  -- Make the editor background transparent
  vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })
  vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' })

  -- Make the terminal background transparent
  vim.api.nvim_set_hl(0, 'Terminal', { bg = 'none' })
  vim.api.nvim_set_hl(0, 'SignColumn', { bg = 'none' })
  vim.api.nvim_set_hl(0, 'VertSplit', { bg = 'none' })
end

return {

  {
    'erikbackman/brightburn.vim',
  },

  {
    'folke/tokyonight.nvim',
    lazy = false,
    opts = {},
    config = function()
      require('tokyonight').setup {
        style = 'storm', -- Can be "storm", "night", "moon", or "day"
        transparent = true, -- Enable this to disable setting the background color
        terminal_colors = true, -- Configure colors for Neovim terminal
        styles = {
          comments = { italic = false },
          keywords = { italic = false },
          sidebars = 'dark',
          floats = 'dark',
        },
      }
      ColorMyPencils 'tokyonight' -- Apply tokyonight as the color scheme
    end,
  },
  {
    'ellisonleao/gruvbox.nvim',
    name = 'gruvbox',
    config = function()
      require('gruvbox').setup {
        terminal_colors = true,
        undercurl = true,
        underline = false,
        bold = true,
        italic = {
          strings = false,
          emphasis = false,
          comments = false,
          operators = false,
          folds = false,
        },
        strikethrough = true,
        invert_selection = false,
        invert_signs = false,
        invert_tabline = false,
        invert_intend_guides = false,
        inverse = true,
        contrast = '',
        palette_overrides = {},
        overrides = {},
        dim_inactive = false,
        transparent_mode = false,
      }
    end,
  },

  {
    'rose-pine/neovim',
    name = 'rose-pine',
    config = function()
      require('rose-pine').setup {
        disable_background = true,
        styles = {
          italic = false,
        },
      }
    end,
  },
}
