return {
    "neovim/nvim-lspconfig",
    lazy = true,
    event = "VeryLazy",
    init = function()
        local lspconfig = require("lspconfig")
        lspconfig.ruff_lsp.setup {
            --on_attach = on_attach,
            init_options = {
                settings = {
                    args = {},
                }
            }
        }
    end
}
