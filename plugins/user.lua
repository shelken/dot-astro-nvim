return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
  {
    "NoahTheDuke/vim-just",
    ft = { "just" },
  },

  -- notify
  {
    "rcarriga/nvim-notify",
    opts = {
      stages = "static",
      render = "compact",
      max_width = "30",
      fps = 6,
      level = 1,
      timeout = 1000,
    },
  },

  -- noice
  {
    "folke/noice.nvim",
    config = function()
      require("noice").setup {
        presets = {
          command_palette = false, -- position the cmdline and popupmenu together
        },
      }
    end,
  },

  -- wakatime
  { "wakatime/vim-wakatime", lazy = false },
}
