return {
  {
    "stevearc/conform.nvim",
    opts = {
      format_on_save = {
        timeout_ms = 500,
        lsp_format = "fallback",
      },
      formatters = {
        biome = {
          condition = function(_, ctx)
            return vim.fs.find({ "biome.json", "biome.jsonc" }, {
              path = ctx.dirname,
              upward = true,
            })[1] ~= nil
          end,
        },
      },
      formatters_by_ft = {
        javascript = { "biome" },
        javascriptreact = { "biome" },
        typescript = { "biome" },
        typescriptreact = { "biome" },
        json = { "biome" },
        jsonc = { "biome" },
        rust = { "rustfmt" },
      },
    },
  },
}
