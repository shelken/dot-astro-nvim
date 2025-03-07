---@type LazySpec
return {
  "yetone/avante.nvim",
  event = "VeryLazy",
  build = "make BUILD_FROM_SOURCE=true",
  opts = {
    -- -@alias Provider "openai" | "claude" | "azure" | "cohere" | [string]
    provider = "deepseek",
    vendors = {
      deepseek = {
        __inherited_from = "openai",
        endpoint = "https://api.deepseek.com",
        model = "deepseek-coder",
        api_key_name = "DEEPSEEK_API_KEY",
        disabled_tools = true,
      },
      qianwen = {
        __inherited_from = "openai",
        api_key_name = "DASHSCOPE_API_KEY",
        endpoint = "https://dashscope.aliyuncs.com/compatible-mode/v1",
        model = "qwen-coder-plus-latest",
      },
      -- not good for ollama
      -- ollama_mio = {
      --   __inherited_from = "openai",
      --   api_key_name = "",
      --   endpoint = "http://mio.local:11434/v1",
      --   model = "deepseek-r1:14b",
      --   disabled_tools = true,
      -- },
      -- ollama_sakamoto = {
      --   __inherited_from = "openai",
      --   api_key_name = "",
      --   endpoint = "http://sakamoto.local:11434/v1",
      --   model = "deepseek-r1:14b",
      --   disabled_tools = true,
      -- },
      -- ollama_pveai = {
      --   __inherited_from = "openai",
      --   api_key_name = "",
      --   endpoint = "http://192.168.6.42:11434/v1",
      --   model = "codeqwen:7b",
      --   disabled_tools = true,
      -- },
    },
    mappings = {
      -- ---@class AvanteConflictMappings
      -- diff = {
      --   ours = "co",
      --   theirs = "ct",
      --   all_theirs = "ca",
      --   both = "cb",
      --   cursor = "cc",
      --   next = "]x",
      --   prev = "[x",
      -- },
      -- suggestion = {
      --   accept = "<M-l>",
      --   next = "<M-]>",
      --   prev = "<M-[>",
      --   dismiss = "<C-]>",
      -- },
      -- jump = {
      --   next = "]]",
      --   prev = "[[",
      -- },
      -- submit = {
      --   normal = "<CR>",
      --   insert = "<C-s>",
      -- },
      -- -- NOTE: The following will be safely set by avante.nvim
      -- ask = "<leader>aa",
      -- edit = "<leader>ae",
      -- refresh = "<leader>ar",
      -- focus = "<leader>af",
      -- toggle = {
      --   default = "<leader>at",
      --   debug = "<leader>ad",
      --   hint = "<leader>ah",
      --   suggestion = "<leader>as",
      --   repomap = "<leader>aR",
      -- },
      -- sidebar = {
      --   apply_all = "A",
      --   apply_cursor = "a",
      --   retry_user_request = "r",
      --   edit_user_request = "e",
      --   switch_windows = "<Tab>",
      --   reverse_switch_windows = "<S-Tab>",
      --   remove_file = "d",
      --   add_file = "@",
      --   close = { "<Esc>", "q" },
      -- },
      -- files = {
      --   add_current = "<leader>ac", -- Add current buffer to selected files
      -- },
      -- select_model = "<leader>a?", -- Select model command
    },
  },
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
    "stevearc/dressing.nvim",
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
    --- The below dependencies are optional,
    -- "echasnovski/mini.pick", -- for file_selector provider mini.pick
    -- "nvim-telescope/telescope.nvim", -- for file_selector provider telescope
    -- "hrsh7th/nvim-cmp", -- autocompletion for avante commands and mentions
    -- "ibhagwan/fzf-lua", -- for file_selector provider fzf
    -- "nvim-tree/nvim-web-devicons", -- or echasnovski/mini.icons
    -- "zbirenbaum/copilot.lua", -- for providers='copilot'
    -- {
    --   -- support for image pasting
    --   "HakonHarnes/img-clip.nvim",
    --   event = "VeryLazy",
    --   opts = {
    --     -- recommended settings
    --     default = {
    --       embed_image_as_base64 = false,
    --       prompt_for_file_name = false,
    --       drag_and_drop = {
    --         insert_mode = true,
    --       },
    --       -- required for Windows users
    --       use_absolute_path = true,
    --     },
    --   },
    -- },
    -- {
    --   -- Make sure to set this up properly if you have lazy=true
    --   "MeanderingProgrammer/render-markdown.nvim",
    --   opts = {
    --     file_types = { "markdown", "Avante" },
    --   },
    --   ft = { "markdown", "Avante" },
    -- },
  },
}
