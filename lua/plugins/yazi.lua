---@type LazySpec
return {
  "DreamMaoMao/yazi.nvim",
  dependencies = {
    "nvim-telescope/telescope.nvim",
    "nvim-lua/plenary.nvim",
  },
  keys = {
    { "<leader>py", "<cmd>Yazi<CR>", desc = "Toggle Yazi" },
  },
}
