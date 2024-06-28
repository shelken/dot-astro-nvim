---@type LazySpec
return {
  {
    -- git blame plugin
    "f-person/git-blame.nvim",
    -- dir = "~/git-blame.nvim",
    -- load the plugin at startup
    -- event = "VeryLazy",
    -- Because of the keys part, you will be lazy loading this plugin.
    -- The plugin wil only load once one of the keys is used.
    -- If you want to load the plugin at startup, add something like event = "VeryLazy",
    -- or lazy = false. One of both options will work.
    opts = {
      enabled = true,
      message_template = " <summary> • <date> • <author> • <<sha>>",
      date_format = "%m-%d-%Y %H:%M:%S",
      virtual_text_column = 1,
    },
    keys = {
      {
        "<Leader>gfu",
        "<cmd>GitBlameToggle<cr>",
        desc = "toggle git blame",
      },
      {
        "<Leader>gfe",
        "<cmd>GitBlameEnable<cr>",
        desc = "enable git blame",
      },
      {
        "<Leader>gfd",
        "<cmd>GitBlameDisable<cr>",
        desc = "disable git blame",
      },
      {
        "<Leader>gfh",
        "<cmd>GitBlameCopySHA<cr>",
        desc = "copy line commit SHA",
      },
      {
        "<Leader>gfl",
        "<cmd>GitBlameCopyCommitURL<cr>",
        desc = "copy line commit URL",
      },
      {
        "<Leader>gfo",
        "<cmd>GitBlameOpenFileURL<cr>",
        desc = "opens file in default browser",
      },
      {
        "<Leader>gfc",
        "<cmd>GitBlameCopyFileURL<cr>",
        desc = "copy file url to clipboard",
      },
    },
  },
}
