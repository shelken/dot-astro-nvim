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
  {
    "3rd/image.nvim",
    opts = {
      backend = "kitty",
      processor = "magick_rock",
      markdown = {
        enabled = true,
        clear_in_insert_mode = false,
        download_remote_images = true,
        only_render_image_at_cursor = true,
        floating_windows = false, -- if true, images will be rendered in floating markdown windows
        filetypes = { "markdown", "vimwiki" }, -- markdown extensions (ie. quarto) can go here
      },
    },
  },
}
