
return { 
    {"catppuccin/nvim", name = "catppuccin", lazy = true --[[, priority = 1000, 
        config = function()
            vim.cmd.colorscheme "catppuccin"
        end
        ]]
    },
    {"rebelot/kanagawa.nvim", name = "kanagawa", priority = 1000,
        config = function()
            vim.cmd.colorscheme "kanagawa"
        end
    }
}
