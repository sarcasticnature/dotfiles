return { -- You can easily change to a different colorscheme.
    -- Change the name of the colorscheme plugin below, and then
    -- change the command in the config to whatever the name of that colorscheme is.
    --
    -- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`.
    {
        "ellisonleao/gruvbox.nvim",
        priority = 1000, -- Make sure to load this before all the other start plugins.
        config = function()
            ---@diagnostic disable-next-line: missing-fields
            require("gruvbox").setup({
                -- Default options:
                terminal_colors = true, -- add neovim terminal colors
                undercurl = true,
                underline = true,
                bold = true,
                italic = {
                    strings = true,
                    emphasis = true,
                    comments = true,
                    operators = false,
                    folds = true,
                },
                strikethrough = true,
                invert_selection = false,
                invert_signs = false,
                invert_tabline = false,
                inverse = true, -- invert background for search, diffs, statuslines and errors
                contrast = "hard", -- can be "hard", "soft" or empty string
                palette_overrides = {},
                overrides = {},
                dim_inactive = false,
                transparent_mode = false,
            })
            --vim.cmd.colorscheme("gruvbox")
        end,
    },
    {
        "rebelot/kanagawa.nvim",
        priority = 1000,
        config = function()
            ---@diagnostic disable-next-line: missing-fields
            require("kanagawa").setup({
                compile = false, -- enable compiling the colorscheme
                undercurl = true, -- enable undercurls
                commentStyle = { italic = true },
                functionStyle = {},
                keywordStyle = { italic = true },
                statementStyle = { bold = true },
                typeStyle = {},
                transparent = false, -- do not set background color
                dimInactive = false, -- dim inactive window `:h hl-NormalNC`
                terminalColors = true, -- define vim.g.terminal_color_{0,17}
                colors = { -- add/modify theme and palette colors
                    palette = {},
                    theme = { wave = {}, lotus = {}, dragon = {}, all = {} },
                },
                --overrides = function(colors) -- add/modify highlights
                --    return {}
                --end,
                theme = "wave", -- Load "wave" theme
                background = { -- map the value of 'background' option to a theme
                    dark = "wave", -- try "dragon" !
                    light = "lotus",
                },
            })
            --vim.cmd.colorscheme("kanagawa")
        end,
    },
    {
        "navarasu/onedark.nvim",
        priority = 1000, -- make sure to load this before all the other start plugins
        config = function()
            -- Lua
            require("onedark").setup({
                -- Main options --
                style = "dark", -- Default theme style. Choose between 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer' and 'light'
                transparent = false, -- Show/hide background
                term_colors = true, -- Change terminal color as per the selected theme style
                ending_tildes = false, -- Show the end-of-buffer tildes. By default they are hidden
                cmp_itemkind_reverse = false, -- reverse item kind highlights in cmp menu

                -- toggle theme style ---
                toggle_style_key = nil, -- keybind to toggle theme style. Leave it nil to disable it, or set it to a string, for example "<leader>ts"
                toggle_style_list = { "dark", "darker", "cool", "deep", "warm", "warmer", "light" }, -- List of styles to toggle between

                -- Change code style ---
                -- Options are italic, bold, underline, none
                -- You can configure multiple style with comma separated, For e.g., keywords = 'italic,bold'
                code_style = {
                    comments = "italic",
                    keywords = "none",
                    functions = "none",
                    strings = "none",
                    variables = "none",
                },

                -- Lualine options --
                lualine = {
                    transparent = false, -- lualine center bar transparency
                },

                -- Custom Highlights --
                colors = {}, -- Override default colors
                highlights = {}, -- Override highlight groups

                -- Plugins Config --
                diagnostics = {
                    darker = true, -- darker colors for diagnostic
                    undercurl = true, -- use undercurl instead of underline for diagnostics
                    background = true, -- use background color for virtual text
                },
            })
            -- Enable theme
            --require("onedark").load()
        end,
    },
    {
        "f4z3r/gruvbox-material.nvim",
        priority = 1000, -- make sure to load this before all the other start plugins
        lazy = false,
        config = function()
            local contrast = "hard"
            local colors = require("gruvbox-material.colors").get(vim.o.background, contrast)
            -- values shown are defaults and will be used if not provided
            require("gruvbox-material").setup({
                italics = true, -- enable italics in general
                contrast = contrast, -- set contrast, can be any of "hard", "medium", "soft"
                comments = {
                    --italics = true,           -- enable italic comments
                },
                background = {
                    transparent = false, -- set the background to be opaque
                },
                float = {
                    force_background = false, -- set to true to force backgrounds on floats even when
                    -- background.transparent is set
                    background_color = nil, -- set color for float backgrounds. If nil, uses the default color set
                    -- by the color scheme
                },
                signs = {
                    force_background = false, -- set to true to force backgrounds on signs even when
                    -- background.transparent is set
                    background_color = nil, -- set color for sign backgrounds. If nil, uses the default color set
                    -- by the color scheme
                },
                customize = function(g, o)
                    if g == "SignColumn" then
                        o.bg = colors.bg1
                    end
                    return o
                end, -- customize the theme in any way you desire, see below what this
                -- configuration accepts
            })
        end,
    },
}
