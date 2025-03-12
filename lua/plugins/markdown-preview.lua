---@type LazySpec
return {
  -- better markdown preview
  -- {
  --   "iamcco/markdown-preview.nvim",
  --   cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
  --   keys = {
  --     {
  --       noremap = true,
  --       mode = "n",
  --       "<leader>mp",
  --       "<cmd>MarkdownPreviewToggle<CR>",
  --       desc = "切换md预览(浏览器)",
  --     },
  --   },
  --   ft = { "markdown" },
  --   build = function() vim.fn["mkdp#util#install"]() end,
  --   -- build = "cd app && yarn install",
  -- },
  {
    "MeanderingProgrammer/render-markdown.nvim",
    dependencies = { "nvim-treesitter/nvim-treesitter", "echasnovski/mini.nvim" }, -- if you use the mini.nvim suite
    -- dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.icons' }, -- if you use standalone mini plugins
    -- dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' }, -- if you prefer nvim-web-devicons
    ---@module 'render-markdown'
    ---@type render.md.UserConfig
    opts = {},
  },
  {
    -- show image in markdown
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
