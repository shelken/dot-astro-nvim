---@type LazySpec
return {
  "nosduco/remote-sshfs.nvim",
  dependencies = { "nvim-telescope/telescope.nvim" },
  opts = {
    -- Refer to the configuration section below
    -- or leave empty for defaults
  },
  -- keys = {
  --   { noremap = true, mode = "n", "<leader>sc", "<cmd>PastifyAfter<CR>", desc = "粘贴文件引用" },
  -- },
  -- config = function()
  --   local api = require "remote-sshfs.api"
  --   vim.keymap.set("n", "<Leader>sc", api.connect, { desc = "连接远程文件" })
  --   vim.keymap.set("n", "<Leader>sd", api.disconnect, { desc = "断开远程文件" })
  --   vim.keymap.set("n", "<leader>se", api.edit, {})
  --
  --   -- (optional) Override telescope find_files and live_grep to make dynamic based on if connected to host
  --   local builtin = require "telescope.builtin"
  --   local connections = require "remote-sshfs.connections"
  --   vim.keymap.set("n", "<Leader>ff", function()
  --     if connections.is_connected then
  --       api.find_files()
  --     else
  --       builtin.find_files()
  --     end
  --   end, { desc = "find files" })
  --   vim.keymap.set("n", "<Leader>fw", function()
  --     if connections.is_connected then
  --       api.live_grep()
  --     else
  --       builtin.live_grep()
  --     end
  --   end, { desc = "find files content" })
  -- end,
}
