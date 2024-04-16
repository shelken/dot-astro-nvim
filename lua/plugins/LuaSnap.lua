---@type LazySpec
return {
  "L3MON4D3/LuaSnip",
  config = function(plugin, opts)
    require "astronvim.plugins.configs.luasnip"(plugin, opts) -- include the default astronvim config that calls the setup call
    -- add more custom luasnip configuration such as filetype extend or custom snippets
    local luasnip = require "luasnip"
    luasnip.filetype_extend("javascript", { "javascriptreact" })
    require("luasnip.loaders.from_lua").load {
      paths = { "~/.config/nvim/files/snippets" },
    }
  end,
}
