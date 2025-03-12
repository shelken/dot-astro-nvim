---@type LazySpec
return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    filesystem = {
      window = {
        mappings = {
          ["o"] = "system_open",
          -- # Open file without losing sidebar focus
          ["<tab>"] = function(state)
            local node = state.tree:get_node()
            if require("neo-tree.utils").is_expandable(node) then
              state.commands["toggle_node"](state)
            else
              state.commands["open"](state)
              vim.cmd "Neotree reveal"
            end
          end,
        },
      },
      filtered_items = {
        visible = false,
        hide_dotfiles = false,
        hide_by_name = {
          ".git",
          ".DS_Store",
        },
        always_show = { -- remains visible even if other settings would normally hide it
          ".gitignore",
          ".env*",
        },
      },
    },
    commands = {
      system_open = function(state)
        local node = state.tree:get_node()
        local path = node:get_id()
        -- macOs: open file in default application in the background.
        vim.fn.jobstart({ "open", path }, { detach = true })
        -- Linux: open file in default application
        -- vim.fn.jobstart({ "xdg-open", path }, { detach = true })

        -- Windows: Without removing the file from the path, it opens in code.exe instead of explorer.exe
        -- local p
        -- local lastSlashIndex = path:match "^.+()\\[^\\]*$" -- Match the last slash and everything before it
        -- if lastSlashIndex then
        --   p = path:sub(1, lastSlashIndex - 1) -- Extract substring before the last slash
        -- else
        --   p = path -- If no slash found, return original path
        -- end
        -- vim.cmd("silent !start explorer " .. p)
      end,
    },
  },
}
