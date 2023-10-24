local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup(
    "plugins",
    {
        root = vim.fn.stdpath("data") .. "/lazy",
        defaults = {
            lazy = false,
            version = nil,
            cond = nil
        },
        spec = nil,
        lockfile = vim.fn.stdpath("config") .. "/lazy-lock.json",
        concurrency = jit.os:find("Windows") and (vim.loop.available_parallelism() * 2) or nil,
        git = {
            log = { "-8" },
            timeout = 120,
            url_format = "https://github.com/%s.git",
            filter = true
        },
        dev = {
            path = "",
            patterns = {},
            fallback = false
        },
        install = {
            missing = true,
            colorscheme = { "moonfly" }
        },
        ui = {
            size = { width = 0.8, height = 0.8 },
            wrap = true,
            border = "none",
            title = nil,
            title_pos = "center",
            pills = true,
            icons = {
                cmd = "cmd",
                config = "cfg",
                event = "evnt",
                ft = "ft",
                init = "init",
                import = "imp",
                keys = "key",
                lazy = "lzy",
                loaded = "load",
                not_loaded = "notld",
                plugin = "plug",
                runtime = "run",
                require = "req",
                source = "src",
                start = ">",
                task = "]",
                list = {
                    "o",
                    "->",
                    "*",
                    "-"
                }
            },
            browser = nil,
            throttle = 20,
            custom_keys = {
                ["<localleader>l"] = {
                    function(plugin)
                    require("lazy.util").float_term({ "lazygit", "log" }, {
                        cwd = plugin.dir,
                    })
                    end,
                    desc = "Open lazygit log"
                    },
                ["<localleader>t"] = {
                    function(plugin)
                        require("lazy.util").float_term(nil, {
                            cwd = plugin.dir,
                    })
                    end,
                    desc = "Open terminal in plugin dir"
                    },
            },
        },
        diff = {
            cmd = "git"
        },
        checker = {
            enabled = false,
            concurrency = nil,
            notify = false,
            frequency = 3600,
            check_pinned = false
        },
        change_detection = {
        enabled = true,
            notify = true
        },
        performance = {
            cache = {
                enabled = true
            },
            reset_packpath = true,
            rtp = {
                reset = true,
                paths = {},
                disabled_plugins = {
                    -- "gzip",
                    -- "matchit",
                    -- "matchparen",
                    "netrwPlugin",
                    -- "tarPlugin",
                    "tohtml",
                    "tutor"
                    -- "zipPlugin",
                },
            },
        },
        readme = {
            enabled = true,
            root = vim.fn.stdpath("state") .. "/lazy/readme",
            files = { "README.md", "lua/**/README.md" },
            skip_if_doc_exists = true,
        },
        state = vim.fn.stdpath("state") .. "/lazy/state.json",
        build = {
            warn_on_override = true
        },
        profiling = {
            loader = false,
            require = false
        },
    }
)
