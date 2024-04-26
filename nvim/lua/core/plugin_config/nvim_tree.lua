-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- optionally enable 24-bit colour
vim.opt.termguicolors = true

require("nvim-tree").setup({
  sort = {
    sorter = "case_sensitive",
  },
  view = {
    width = 35,
    number = true,
    relativenumber = true,
    centralize_selection = true,
  },
  renderer = {
    group_empty = true,
    add_trailing = true,
    highlight_git = "icon",
  },
  filters = {
    dotfiles = true,
  },
})
