return {
    {
        "ms-jpq/coq_nvim",
        branch = "coq",
        dependencies = {
            {
                "ms-jpq/coq.artifacts",
                branch = "artifacts"
            },
            {
                "ms-jpq/coq.thirdparty",
                branch = "3p"
            }
        },
        config = function()
            vim.g.coq_settings = {
                ["xdg"] = true,
                ["display.icons.mode"] = "none"
            }
            vim.cmd("COQnow --shut-up")
            require("coq_3p") {
                { src = "dap" },
                { src = "bc", short_name = "MATH", precision = 6 },
                { src = "nvimlua", short_name = "nLUA", conf_only = true },
                { src = "builtin/c"       },
                { src = "builtin/syntax"  }
            }
        end
    }
}
