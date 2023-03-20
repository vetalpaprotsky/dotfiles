local treesitter = require('nvim-treesitter.configs')

treesitter.setup {
  ensure_installed = "all",
  auto_install = true,
  highlight = {
    enable = true,
  },
  rainbow = {
    enable = true,
    extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
  },
  endwise = {
    enable = true,
  },
}
