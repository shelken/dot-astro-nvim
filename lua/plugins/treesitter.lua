-- Customize Treesitter

---@type LazySpec
return {
  "nvim-treesitter/nvim-treesitter",
  opts = function(_, opts)
    -- add more things to the ensure_installed table protecting against community packs modifying it
    opts.ensure_installed = require("astrocore").list_insert_unique(opts.ensure_installed, {
      -- neovim
      "vim",
      "lua",
      -- operation & cloud native
      "dockerfile",
      "hcl",
      "regex",
      "terraform",
      "nix",
      "csv",
      "helm",
      -- other programming language
      "diff",
      "gitignore",
      "gitcommit",
      "sql",
    })
  end,
}
