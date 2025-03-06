-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  -- theme
  { import = "astrocommunity.colorscheme.catppuccin" },
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
  { import = "astrocommunity.pack.proto" },

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
  { import = "astrocommunity.utility.noice-nvim" },
  -- 滚动条
  -- { import = "astrocommunity.scrolling.nvim-scrollbar" },

  -- 跳转
  { import = "astrocommunity.motion.flash-nvim" }, -- s 快速搜索跳转
  -- { import = "astrocommunity.motion.leap-nvim" },
  { import = "astrocommunity.motion.nvim-spider" }, -- w,e,b 跳过不重要标点符号
  { import = "astrocommunity.motion.mini-surround" }, -- gza/gzd 添加/删除包围符号
  -- { import = "astrocommunity.motion.mini-ai" },
}
