---@type LazySpec
return {
  "nvim-pack/nvim-spectre",
  dependencies = {
    { "nvim-lua/plenary.nvim" },
  },
  keys = {
    {
      "<Leader>ss",
      '<cmd>lua require("spectre").toggle()<CR>',
      desc = "Toggle Spectre",
    },
    {
      "<Leader>sw",
      '<cmd>lua require("spectre").open_visual({select_word=true})<CR>',
      desc = "Search current word",
      mode = { "n", "v" },
    },
    {
      "<Leader>sp",
      '<cmd>lua require("spectre").open_file_search({select_word=true})<CR>',
      desc = "Search on current file",
    },
  },
}
