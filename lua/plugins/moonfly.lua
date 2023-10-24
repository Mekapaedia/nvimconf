return {
    "bluz71/vim-moonfly-colors",
    name = "moonfly",
    lazy = false,
    priority = 1000,
    init = function()
        vim.opt.termguicolors = true
        vim.g.moonflyItalics = false
        vim.g.moonflyVirtualTextColor = true
        local custom_highlight = vim.api.nvim_create_augroup("CustomHighlight", {})
        vim.api.nvim_create_autocmd("ColorScheme", {
            pattern = "moonfly",
            callback = function()
                local black = "#000000"
                local white = "#c6c6c6"
                local grey0 = "#323437"
                local khaki = "#c2c292"
                local yellow = "#e3c78a"
                local orange = "#de935f"
                local coral = "#f09479"
                local orchid = "#e196a2"
                local lime = "#85dc85"
                local green = "#8cc85f"
                local emerald = "#36c692"
                local blue = "#80a0ff"
                local sky = "#74b2ff"
                local turquoise = "#79dac8"
                local purple = "#ae81ff"
                local cranberry = "#e65e72"
                local violet = "#cf87e8"
                local crimson = "#ff5189"
                local red = "#ff5454"
                vim.api.nvim_set_hl(0, "Normal", { bg = black, fg = white })
                vim.api.nvim_set_hl(0, "MatchParen", { bg = grey0, fg = red })
                vim.api.nvim_set_hl(0, "NonText", { fg = sky })
                vim.api.nvim_set_hl(0, "Whitespace", { fg = sky })
            end,
            group = custom_highlight,
        })
        vim.cmd.colorscheme("moonfly")
    end
}
