---@type LazySpec
return {
  -- {
  --   "0x00-ketsu/markdown-preview.nvim",
  --   ft = { "md", "markdown", "mkd", "mkdn", "mdwn", "mdown", "mdtxt", "mdtext", "rmd", "wiki" },
  --   keys = {
  --     { noremap = true, mode = "n", "<leader>mP", "<cmd>MPToggle<CR>", desc = "切换md预览" },
  --   },
  --   config = function()
  --     require("markdown-preview").setup {
  --       -- your configuration comes here
  --       -- or leave it empty to use the default settings
  --       -- refer to the setup section below
  --     }
  --   end,
  -- },
  -- better markdown preview
  {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    keys = {
      {
        noremap = true,
        mode = "n",
        "<leader>mp",
        "<cmd>MarkdownPreviewToggle<CR>",
        desc = "切换md预览(浏览器)",
      },
    },
    ft = { "markdown" },
    build = function() vim.fn["mkdp#util#install"]() end,
    -- build = "cd app && yarn install",
  },
}
