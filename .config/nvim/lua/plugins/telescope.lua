return {
  "nvim-telescope/telescope.nvim",
  opts = {
    defaults = {
      vimgrep_arguments = {
        "rg",
        "--color=never",
        "--no-heading",
        "--with-filename",
        "--line-number",
        "--column",
        "--smart-case",
        "--hidden", -- This allows live_grep to see hidden files
      },
    },
    pickers = {
      find_files = {
        hidden = true, -- This allows <leader>ff to see hidden files
      },
    },
  },
}
