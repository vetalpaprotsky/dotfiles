require("nvim-tree").setup {
  disable_netrw = true,
  view = {
    adaptive_size = true,
  },
  actions = {
    open_file = {
      quit_on_open = true
    }
  }
}
