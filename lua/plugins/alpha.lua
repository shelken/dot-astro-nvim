---@type LazySpec
return {
  "goolord/alpha-nvim",
  config = function()
    local alpha = require "alpha"
    local dashboard = require "alpha.themes.dashboard"
    require "alpha.term"

    dashboard.opts.opts.noautocmd = true
    dashboard.section.terminal.opts.redraw = true
    dashboard.section.terminal.command = "cat ~/.config/nvim/files/alpha/mio.txt"
    dashboard.section.terminal.width = 50
    dashboard.section.terminal.height = 24
    dashboard.section.terminal.opts.window_config.border = "rounded"

    dashboard.opts.layout = {
      { type = "padding", val = 1 },
      dashboard.section.terminal,
      { type = "padding", val = 4 },
      dashboard.section.buttons,
      dashboard.section.footer,
    }
    alpha.setup(dashboard.config)
  end,
}
