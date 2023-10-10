return {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    config = function()
        --Load colorscheme here
        Color = Color or "tokyonight-night"
        vim.cmd.colorscheme(Color)
    end,
}
