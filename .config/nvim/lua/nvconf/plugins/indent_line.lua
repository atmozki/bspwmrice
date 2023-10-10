return {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    config = function ()

        -- Fixing Indents showing up in Dashboard
        vim.g.indent_blankline_filetype_exclude = {'dashboard'}
    end
}
