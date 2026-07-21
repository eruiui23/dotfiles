return {
  "everviolet/nvim",
  name = "evergarden",
  priority = 1000, -- Colorscheme plugin is loaded first before any other plugins
  opts = {
    theme = {
      variant = "fall", -- 'winter'|'fall'|'spring'|'summer'
      accent = "green",
    },
    editor = {
      transparent_background = true,
      override_terminal = true,
      sign = { color = "none" },
      float = {
        color = "mantle",
        solid_border = false,
      },
      completion = {
        color = "surface0",
      },
    },
    style = {
      tabline = { "reverse" },
      search = { "italic", "reverse" },
      incsearch = { "italic", "reverse" },
      types = { "italic" },
      keyword = { "italic" },
      comment = { "italic" },
    },
    overrides = {
      Normal = { fg = "#eeffff", bg = "#273032" },
      NormalFloat = { fg = "#eeffff", bg = "#273032" },
      Cursor = { fg = "#262626", bg = "#17c29d" },
      CursorLineNr = { fg = "#4dd4ae", bold = true },
      LineNr = { fg = "#5b5959" },
      Visual = { bg = "#325e94" },

      -- Set comment color using a Hex color code
      -- Comment = { fg = "#c47e45", italic = true },
      -- ["@comment"] = { fg = "#c47e45", italic = true },

      Keyword = { fg = "#FE7171" },
      ["@keyword"] = { fg = "#FE7171" },

      Function = { fg = "#e8e791" },
      ["@function"] = { fg = "#e8e791" },
      ["@function.call"] = { fg = "#e8e791" },
      ["@method"] = { fg = "#82AAFF", italic = true },

      String = { fg = "#d3915b" },
      ["@string"] = { fg = "#d3915b" },

      Number = { fg = "#75abf1" },
      Float = { fg = "#75abf1" },
      Boolean = { fg = "#75abf1" },
      ["@number"] = { fg = "#75abf1" },
      ["@parameter"] = { fg = "#75abf1" },

      Identifier = { fg = "#93e3cb" },
      ["@variable"] = { fg = "#93e3cb" },

      Type = { fg = "#70ded5" },
      ["@type"] = { fg = "#70ded5" },
      ["@type.builtin"] = { fg = "#B2CCD6" },

      Operator = { fg = "#f1a14b" },
      ["@operator"] = { fg = "#f1a14b" },

      Delimiter = { fg = "#f1a14b" },
      ["@punctuation.delimiter"] = { fg = "#ffffff" },
      ["@punctuation.bracket"] = { fg = "#f1a14b" },

      Tag = { fg = "#f07178" },
      ["@tag"] = { fg = "#f07178" },
      ["@tag.attribute"] = { fg = "#FFCB6B", italic = true },

      Constant = { fg = "#75abf1" },
      ["@constant"] = { fg = "#75abf1" },
      ["@string.regex"] = { fg = "#89DDFF" },
      ["@character.escape"] = { fg = "#89DDFF" },

      -- Bufferline text colors
      BufferLineBuffer = { fg = "#9dd1cd" }, -- Inactive buffer names (app.conf, deadd.css, etc.)
      BufferLineBufferVisible = { fg = "#c5dedc" }, -- Visible inactive buffers (in splits)
      BufferLineBufferSelected = { fg = "#70ded5", bold = true, italic = true }, -- Currently active buffer (binding.conf)

      -- Standard Vim tabline fallback
      TabLine = { fg = "#70ded5" },
      TabLineSel = { fg = "#70ded5", bold = true },
    },
    color_overrides = {},
  },
}
