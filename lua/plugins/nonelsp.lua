return {
  "nvimtools/none-ls.nvim",
  lazy = true,
  event = "VeryLazy",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "gbprod/none-ls-shellcheck.nvim"
  },
  init = function()
    local null_ls = require("null-ls")
    local sources = {
        require("none-ls-shellcheck.diagnostics"),
        require("none-ls-shellcheck.code_actions"),
    }
    null_ls.setup({sources = sources})
  end
}
