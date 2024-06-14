return {
    "neovim/nvim-lspconfig",
    lazy = true,
    event = "VeryLazy",
    init = function()
        local lspconfig = require("lspconfig")
        lspconfig.ruff.setup {
            on_attach = on_attach,
            init_options = {
                settings = {
                    args = {},
                }
            },
            diagnostics = {
                underline = true,
                update_in_insert = false,
                virtual_text = {
                    spacing = 4,
                    source = "if_many",
                },
                severity_sort = true,
            },
            inlay_hints = {
                enabled = true,
                exclude = {},
            }
        }
        lspconfig.clangd.setup {
            cmd = {
                "clangd",
                "--background-index",
                "--clang-tidy",
                "--header-insertion=iwyu",
                "--completion-style=detailed",
                "--function-arg-placeholders",
                "--fallback-style=llvm",
            },
            init_options = {
                usePlaceholders = true,
                completeUnimported = true,
                clangdFileStatus = true,
            },
            diagnostics = {
                underline = true,
                update_in_insert = false,
                virtual_text = {
                    spacing = 4,
                    source = "if_many",
                },
                severity_sort = true,
            },
            inlay_hints = {
                enabled = true,
                exclude = {},
            }
        }
        lspconfig.svls.setup {}
    end
}
