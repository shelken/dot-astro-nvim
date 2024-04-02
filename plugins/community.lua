return {
  -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",
  -- example of importing a plugin, comment out to use it or add your own
  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity

  -- theme
  { import = "astrocommunity.colorscheme.catppuccin" },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    opts = function(_, opts)
      opts.flavour = "mocha" -- latte, frappe, macchiato, mocha
      opts.transparent_background = true -- setting the background color.
    end,
  },
  -- language
  { import = "astrocommunity.pack.rust" },
  { import = "astrocommunity.pack.go" },
  { import = "astrocommunity.pack.java" },
  { import = "astrocommunity.pack.python" },
  -- config language
  { import = "astrocommunity.pack.json" },
  { import = "astrocommunity.pack.yaml" },
  { import = "astrocommunity.pack.toml" },
  -- misc
  { import = "astrocommunity.pack.bash" },
  { import = "astrocommunity.pack.markdown" },
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.just" },

  -- cloud
  { import = "astrocommunity.pack.docker" },
  { import = "astrocommunity.pack.terraform" },
  { import = "astrocommunity.pack.helm" },

  -- 突出显示
  { import = "astrocommunity.editing-support.todo-comments-nvim" },

  -- 自动补全命令
  { import = "astrocommunity.completion.cmp-cmdline" },
  -- replaces the UI for messages, cmdline and the popupmenu
  -- https://github.com/folke/noice.nvim
  -- { import = "astrocommunity.utility.noice-nvim" },
  -- 滚动条
  { import = "astrocommunity.scrolling.nvim-scrollbar" },
}
