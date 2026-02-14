return {
  "ibhagwan/fzf-lua",
  opts = {
    files = {
      -- This adds the --hidden flag to the underlying 'find' or 'fd' command
      fd_opts = [[--color=never --type f --hidden --follow --exclude .git]],
    },
  },
}
