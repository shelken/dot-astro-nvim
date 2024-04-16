---@type LazySpec
return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    filesystem = {
      filtered_items = {
        visible = false,
        hide_dotfiles = true,
        hide_by_name = {
          -- ".git",
          -- ".DS_Store",
        },
        always_show = { -- remains visible even if other settings would normally hide it
          ".gitignore",
          ".env*",
        },
      },
    },
  },
}
