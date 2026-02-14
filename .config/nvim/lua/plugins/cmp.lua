return {
  {
    "saghen/blink.cmp",
    opts = {
      keymap = {
        preset = "default",
        ["<Tab>"] = { "select_next", "fallback" },
        ["<S-Tab>"] = { "select_prev", "fallback" },
        -- This line makes Enter accept the completion instead of a new line
        ["<CR>"] = { "accept", "fallback" },
      },
      completion = {
        list = {
          selection = {
            -- This makes sure the first item is NOT auto-selected
            -- so you can still hit Enter for a new line if you haven't Tabbed yet.
            preselect = false,
            auto_insert = true,
          },
        },
      },
    },
  },
}
