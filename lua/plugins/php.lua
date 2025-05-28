return {
  {
    "stevearc/conform.nvim",
    optional = true,
    opts = {
      formatters_by_ft = {
        php = { "pint" },
        tpl = { "prettier" },
      },
      formatters = {
        ["pint"] = {
          command = "pint",
          args = {
            "$FILENAME",
          },
          stdin = false,
        },
      },
    },
  },
  {
    "mfussenegger/nvim-lint",
    optional = true,
    opts = {
      linters_by_ft = {
        php = { "phpstan" },
      },
    },
  },
  {
    "nvimtools/none-ls.nvim",
    optional = true,
    opts = function(_, opts)
      local nls = require("null-ls")
      opts.sources = opts.sources or {}
      table.insert(opts.sources, nls.builtins.formatting.pint)
      table.insert(opts.sources, nls.builtins.diagnostics.phpstan)
      table.insert(
        opts.sources,
        nls.builtins.formatting.prettier.with({
          extra_filetypes = { "tpl" },
          filetypes = { "html" },
        })
      )
    end,
  },
  {
    "lumiliet/vim-twig",
  },
}
