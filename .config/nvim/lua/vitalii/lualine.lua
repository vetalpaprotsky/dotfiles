require('lualine').setup {
  options = {
    theme = 'dracula-nvim',
    component_separators = '',
    section_separators = '',
    disabled_filetypes = { 'NvimTree' },
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch'},
    lualine_c = {
      {
        'filename',
        path = 1
      }
    },
    lualine_x = {'diff'},
    lualine_y = {'progress'},
    lualine_z = {'location'},
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {
      {
        'filename',
        path = 1
      }
    },
    lualine_x = {},
    lualine_y = {},
    lualine_z = {},
  },
}
