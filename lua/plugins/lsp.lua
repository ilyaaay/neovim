return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        rust_analyzer = {
          mason = false,
        },
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    opts = function(_, opts)
      opts.servers = opts.servers or {}

      opts.servers.rust_analyzer = {
        mason = false,
      }

      opts.servers.vtsls = {}

      opts.servers.tsserver = { enabled = false }
      opts.servers.ts_ls = { enabled = false }
      opts.servers.tsgo = { enabled = false }
    end,
  },
}
