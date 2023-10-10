return {
    'lewis6991/gitsigns.nvim',
    config = function ()

        require('gitsigns').setup()

       --Keybindings
        vim.keymap.set("n", "<leader>hp", "<cmd>Gitsigns preview_hunk<CR>", { desc = " GS Preview Hunk" })
        vim.keymap.set("n", "<leader>hr", "<cmd>Gitsigns reset_hunk<CR>", { desc = " GS Reset Hunk" })
        vim.keymap.set("n", "<leader>tb", "<cmd>Gitsigns toggle_current_line_blame<CR>", { desc = " GS Toggle Current Line Blame" })
    end
}
