return {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    config = function ()
        require("ibl").overwrite {

            -- Fixing Indents showing up in Dashboard
            exclude = { filetypes = { "dashboard" } },
        }
    end
}
