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

  -- auto save
  {
    "0x00-ketsu/autosave.nvim",
    -- lazy-loading on events
    event = { "InsertLeave", "TextChanged" },
    opts = function(_, opts)
      opts.prompt_style = "stdout" -- notify or stdout
    end,
  },

  {
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
  },

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
  -- osc 52
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
  -- comment-box
  {
    "LudoPinelli/comment-box.nvim",
    keys = {
      {
        mode = "v",
        "<leader>mm",
        ":CBccbox",
        desc = "美化注释",
      },
      {
        mode = "n",
        "<leader>mm",
        ":CBccbox",
        desc = "美化注释",
      },
    },
  },
}
