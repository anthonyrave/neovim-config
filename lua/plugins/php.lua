return {
  {
    "stevearc/conform.nvim",
    optional = true,
    opts = {
      formatters_by_ft = {
        php = { "php_cs_fixer" },
      },
      formatters = {
        ["php-cs-fixer"] = {
          command = "php-cs-fixer",
          args = {
            "fix",
            "--config=/Volumes/Projects/Prozon/dev/.php-cs-fixer.dist.php",
            "$FILENAME",
          },
          stdin = false,
        },
      },
    },
  },
}
