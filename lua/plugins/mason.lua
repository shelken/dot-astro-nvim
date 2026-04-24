-- Customize Mason plugins

---@type LazySpec
return {
  {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    opts = function(_, opts)
      opts.ensure_installed = {}
      opts.run_on_start = false
    end,
  },
  -- AstroNvim v6 和 mason-lspconfig v2 需要 Mason v2。
  { "mason-org/mason.nvim", version = "^2.0.0" },
  -- use mason-lspconfig to configure LSP installations
  {
    "mason-org/mason-lspconfig.nvim",
    version = "^2.0.0",
    -- mason is unusable on NixOS, disable it.
    -- ensure_installed nothing
    opts = function(_, opts)
      opts.ensure_installed = nil
      opts.automatic_enable = false
    end,

    -- overrides `require("mason-lspconfig").setup(...)`
    -- opts = function(_, opts)
    --   -- add more things to the ensure_installed table protecting against community packs modifying it
    --   opts.ensure_installed = require("astrocore").list_insert_unique(opts.ensure_installed, {
    --     "lua_ls",
    --     -- add more arguments for adding more language servers
    --   })
    -- end,
  },
  -- use mason-null-ls to configure Formatters/Linter installation for null-ls sources
  {
    "jay-babu/mason-null-ls.nvim",
    -- mason is unusable on NixOS, disable it.
    -- ensure_installed nothing
    opts = function(_, opts)
      opts.ensure_installed = nil
      opts.automatic_installation = false
    end,

    -- -- overrides `require("mason-null-ls").setup(...)`
    -- opts = function(_, opts)
    --   -- add more things to the ensure_installed table protecting against community packs modifying it
    --   opts.ensure_installed = require("astrocore").list_insert_unique(opts.ensure_installed, {
    --     "prettier",
    --     "stylua",
    --     -- add more arguments for adding more null-ls sources
    --   })
    -- end,
  },
  {
    "jay-babu/mason-nvim-dap.nvim",
    -- mason is unusable on NixOS, disable it.
    -- ensure_installed nothing
    opts = function(_, opts)
      opts.ensure_installed = nil
      opts.automatic_installation = false
    end,

    -- overrides `require("mason-nvim-dap").setup(...)`
    -- opts = function(_, opts)
    --   -- add more things to the ensure_installed table protecting against community packs modifying it
    --   opts.ensure_installed = require("astrocore").list_insert_unique(opts.ensure_installed, {
    --     "python",
    --     -- add more arguments for adding more debuggers
    --   })
    -- end,
  },
}
