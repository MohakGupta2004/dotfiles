return {
  -- 1. Tell LazyVim to use Kanagawa
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "kanagawa",
    },
  },

  -- 2. Disable TokyoNight (safe now)
  {
    "folke/tokyonight.nvim",
    enabled = false,
  },

  -- 3. Install & configure Kanagawa
  {
    "rebelot/kanagawa.nvim",
    lazy = false,    -- load during startup
    priority = 1000, -- load before UI plugins
    config = function()
      require("kanagawa").setup({
        theme = "dragon", -- wave | dragon | lotus
        transparent = true,
      })
    end,
  },
}
