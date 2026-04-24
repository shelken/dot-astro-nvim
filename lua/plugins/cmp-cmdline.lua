---@type LazySpec
return {
  "hrsh7th/cmp-cmdline",
  opts = function(_, opts)
    local cmp = require "cmp"

    local cmdline_mapping = cmp.mapping.preset.cmdline {
      ["<Tab>"] = cmp.mapping(function(fallback)
        if cmp.visible() then
          cmp.confirm { select = true }
        else
          fallback()
        end
      end, { "c" }),
      ["<S-Tab>"] = cmp.mapping(function(fallback)
        if cmp.visible() then
          cmp.select_prev_item()
        else
          fallback()
        end
      end, { "c" }),
      ["<Down>"] = cmp.mapping(function(fallback)
        if cmp.visible() then
          cmp.select_next_item()
        else
          fallback()
        end
      end, { "c" }),
      ["<Up>"] = cmp.mapping(function(fallback)
        if cmp.visible() then
          cmp.select_prev_item()
        else
          fallback()
        end
      end, { "c" }),
    }

    for _, cmdline in ipairs(opts) do
      cmdline.mapping = vim.tbl_deep_extend("force", cmdline.mapping or {}, cmdline_mapping)
    end

    return opts
  end,
}
