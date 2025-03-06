---@type LazySpec
return {
  -- mac should install pngpaste
  "HakonHarnes/img-clip.nvim",
  event = "VeryLazy",
  opts = {
    default = {
      dir_path = "assets",
      file_name = "%Y-%m-%d-%H-%M-%S",
    },
    -- add options here
    -- or leave it empty to use the default settings
  },
  keys = {
    -- suggested keymap
    { "<leader>pv", "<cmd>PasteImage<cr>", desc = "Paste image from system clipboard" },
  },
}
