return {
  {
    "mikavilpas/yazi.nvim",
    event = "VeryLazy",
    dependencies = {
      "folke/snacks.nvim", -- or "nvim-lua/plenary.nvim"
    },
    keys = {
      {
        "<leader>e",
        function()
          require("yazi").yazi()
        end,
        desc = "Open Yazi (current file directory)",
      },
      {
        "<leader>E",
        function()
          require("yazi").yazi(nil, vim.fn.getcwd())
        end,
        desc = "Open Yazi (project root / cwd)",
      },
      {
        "<c-up>",
        function()
          require("yazi").toggle()
        end,
        desc = "Resume last Yazi session",
      },
    },
    opts = {
      -- Automatically opens Yazi when starting nvim with a directory argument (e.g. `nvim .`)
      open_for_directories = true,
      keymaps = {
        show_help = "<f1>",
        open_file_in_vertical_split = "<c-v>",
        open_file_in_horizontal_split = "<c-x>",
        open_file_in_tab = "<c-t>",
        grep_in_directory = "<c-s>",
      },
    },
  },
}
