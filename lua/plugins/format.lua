return {
  {
    "stevearc/conform.nvim",
    opts = {
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
