return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup {
                log_level = vim.log.levels.DEBUG,
                providers = {
                    "mason.providers.client",
                },
            }
        end
    },
    {
        "williamboman/mason-lspconfig.nvim",
        dependencies = {
            "williamboman/mason.nvim",
            "neovim/nvim-lspconfig",
            "ms-jpq/coq_nvim"
        },
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = {
                    "clangd",
                    "lua_ls",
                    "bashls",
                    "pylsp",
                    "jsonls"
                }
            })
            require("mason-lspconfig").setup_handlers({
                function(server_name)
                    local coq = require("coq")
                    local lsp_config = {}
                    if server_name == "pylsp" then
                        lsp_config = {
                            settings = {
                                pylsp = {
                                    plugins = {
                                        ruff = {
                                            enabled = true,
                                            lineLength = 120
                                        },
                                        mypy = {
                                            enabled = true,
                                        }
                                    }
                                }
                            }
                        }
                    end
                    require("lspconfig")[server_name].setup(coq.lsp_ensure_capabilities(lsp_config))
                end
            })
        end
    },
    {
        "jay-babu/mason-null-ls.nvim",
        dependencies = {
            "williamboman/mason.nvim",
            {
                "jose-elias-alvarez/null-ls.nvim",
                dependencies = {
                    "nvim-lua/plenary.nvim"
                }
            }
        },
        config = function()
            require("mason-null-ls").setup({
                ensure_installed = {
                },
                automatic_installation = false,
                automatic_setup = true,
            })
            require("null-ls").setup({autostart = true})
            require('mason-null-ls').setup_handlers()
        end
    },
    {
        "jay-babu/mason-nvim-dap.nvim",
        dependencies = {
            "williamboman/mason.nvim",
            "mfussenegger/nvim-dap",
        },
        config = function()
            require("mason-nvim-dap").setup({
                ensure_installed = {
                    "python",
                    "cppdbg",
                    "bash"
                },
                automatic_setup = true,
            })
            require('mason-nvim-dap').setup_handlers {}
        end
    }
}
