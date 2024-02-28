return {
  -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",
  -- example of importing a plugin, comment out to use it or add your own
  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity

  -- theme
  { import = "astrocommunity.colorscheme.catppuccin" },
  -- language
  { import = "astrocommunity.pack.rust" },
  { import = "astrocommunity.pack.go" },
  { import = "astrocommunity.pack.json" },
  { import = "astrocommunity.pack.yaml" },
  { import = "astrocommunity.pack.toml" },
  { import = "astrocommunity.pack.markdown" },
  { import = "astrocommunity.pack.docker" },
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.terraform" },

  -- 自动补全命令
  { import = "astrocommunity.completion.cmp-cmdline" },
  -- replaces the UI for messages, cmdline and the popupmenu
  -- https://github.com/folke/noice.nvim
  { import = "astrocommunity.utility.noice-nvim" },
}
