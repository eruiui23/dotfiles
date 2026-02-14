return {
  {
    "rebelot/kanagawa.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      -- transparent = true, -- This is the main toggle
      terminalColors = true, -- Keeps the colors consistent in terminal
      theme = "dragon",
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
      background = {
        dark = "dragon", -- Theme for dark mode
        light = "lotus", -- Theme for light mode
      },
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "kanagawa",
    },
  },
}
