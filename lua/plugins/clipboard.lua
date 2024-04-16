---@type LazySpec
return {
  {
    "ojroques/nvim-osc52",
    keys = {
      {
        mode = "v",
        "<leader>y",
        function() require("osc52").copy_visual() end,
        desc = "copy selection to system clipboard (visual mode)",
      },
    },
  },
}
