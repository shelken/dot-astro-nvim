---@type LazySpec
return {
  "goolord/alpha-nvim",
  -- opts = function(_, opts)
  --   -- customize the dashboard header
  --   opts.section.header.val = {
  --     " █████  ███████ ████████ ██████   ██████",
  --     "██   ██ ██         ██    ██   ██ ██    ██",
  --     "███████ ███████    ██    ██████  ██    ██",
  --     "██   ██      ██    ██    ██   ██ ██    ██",
  --     "██   ██ ███████    ██    ██   ██  ██████",
  --     " ",
  --     "    ███    ██ ██    ██ ██ ███    ███",
  --     "    ████   ██ ██    ██ ██ ████  ████",
  --     "    ██ ██  ██ ██    ██ ██ ██ ████ ██",
  --     "    ██  ██ ██  ██  ██  ██ ██  ██  ██",
  --     "    ██   ████   ████   ██ ██      ██",
  --   }
  --   return opts
  -- end,
  config = function()
    local alpha = require "alpha"
    local dashboard = require "alpha.themes.dashboard"
    local home = os.getenv "HOME"
    local path = home .. "/.config/nvim/files/alpha/mio.gif"
    require "alpha.term"

    dashboard.opts.opts.noautocmd = true
    dashboard.section.terminal.opts.redraw = true
    dashboard.section.terminal.command = "chafa -f symbols -s 60 -c full --fg-only --symbols braille --clear " .. path
    dashboard.section.terminal.width = 60
    dashboard.section.terminal.height = 18
    -- dashboard.section.terminal.opts.window_config.border = "rounded"

    dashboard.opts.layout = {
      -- { type = "padding", val = 0 },
      dashboard.section.terminal,
      { type = "padding", val = 2 },
      dashboard.section.buttons,
      dashboard.section.footer,
    }
    alpha.setup(dashboard.config)
  end,
}
