return {
  "folke/snacks.nvim",
  opts = {
    picker = {
      sources = {
        files = {
          hidden = true, -- This is the magic line for Snacks
        },
      },
    },
  },
}
