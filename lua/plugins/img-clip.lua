---@type LazySpec
return {
  {
    -- mac should install pngpaste
    "HakonHarnes/img-clip.nvim",
    event = "VeryLazy",
    opts = {
      default = {
        dir_path = "assets",
        file_name = function()
          local file_name = vim.fn.expand "%:t:r" -- 获取当前文件名
          local time = os.date "%Y-%m-%d_%H-%M-%S" -- 获取当前时间
          return file_name .. "_" .. time .. ".png" -- 拼接文件名和时间
        end,
      },
      -- add options here
      -- or leave it empty to use the default settings
    },
    keys = {
      -- suggested keymap
      { "<leader>pv", "<cmd>PasteImage<cr>", desc = "Paste image from system clipboard" },
    },
  },
}
