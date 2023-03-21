require("tokyonight").setup({
  style = "storm",
  styles = {
    keywords = { italic = false }
  },
})
vim.cmd[[colorscheme tokyonight]]

-- Colors got broken for some reason...
-- require("dracula").setup({
--   lualine_bg_color = "#44475a"
-- })
-- vim.cmd[[colorscheme dracula]]
