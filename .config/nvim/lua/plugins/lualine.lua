return {
  {
    "nvim-lualine/lualine.nvim",
    opts = function(_, opts)
      -- Get current active lualine theme or fallback to auto
      local theme = type(opts.options.theme) == "string" and require("lualine.themes." .. opts.options.theme)
        or opts.options.theme

      -- Custom colors for the mode badges (bg = background, fg = text color)
      theme.normal.a = { bg = "#2ed1ab", fg = "#14282f", gui = "bold" }
      theme.insert.a = { bg = "#75abf1", fg = "#14282f", gui = "bold" }
      theme.visual.a = { bg = "#f1a14b", fg = "#14282f", gui = "bold" }
      theme.command.a = { bg = "#2ed1ab", fg = "#14282f", gui = "bold" }
      theme.replace.a = { bg = "#f1a14b", fg = "#14282f", gui = "bold" }

      opts.options.theme = theme
    end,
  },
}
