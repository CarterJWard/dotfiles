-- File: ~/.config/nvim/lua/lualine-config.lua
require('lualine').setup {
  options = {
    -- Lualine themes are available in 'lualine/themes'
    theme = 'ayu_mirage', -- Automatically sets the theme based on your Neovim background
    section_separators = {'', ''},
    component_separators = {'', ''},
    icons_enabled = true,
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', {'diagnostics', sources={'nvim_diagnostic'}}},
    lualine_c = {'filename'},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    -- You can configure these as well similar to `sections` if you want different status lines for inactive windows
    lualine_a = {},
    lualine_b = {},
    lualine_c = {},
    lualine_x = {},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  extensions = {},
}

