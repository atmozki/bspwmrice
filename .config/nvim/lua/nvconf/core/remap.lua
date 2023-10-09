-- Remaps For vim

vim.g.mapleader = " "                               -- Make Space Leader Key.

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")        -- Move while highlighted using J and K Keys.
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")                   -- Append below lines to current line with a space.

vim.keymap.set("n", "<C-d>", "<C-d>zz")             -- Half Page Jumping Forward and Backwards with cursor always in center.
vim.keymap.set("n", "<C-u>", "<C-u>zz")

vim.keymap.set("n", "n", "nzzzv")                   -- Search Terms remain in the middle/ cursor always in center.
vim.keymap.set("n", "N", "Nzzzv")                   -- Backwards Search Terms.

vim.keymap.set("n", "<leader>Y", [["+Y]], { desc = "Copy to system clipboard" })          -- Copy to system clipboard (combine with <ap> keys to copy the paragraph
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]], { desc = "Copy to system clipboard 2" })

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz", { desc = "QuickFix cnext" })    -- QuickFix List Command Navigation
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz", { desc = "QuickFix cprev" })
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz", { desc = "QuickFix lnext" })
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz", { desc = "QuickFix lprev" })

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], { desc = "Replace word under cursor everywhere" })    -- Replace the word under the cursor everywhere.

vim.keymap.set("n", "<leader>mx", "<cmd>!chmod +x %<CR>", { silent = true, desc = "chmod this file" })                                          -- Fast chmod the current file. 

vim.keymap.set("n", "<leader>mr", "<cmd>CellularAutomaton make_it_rain<CR>", { desc = "Make it Rain" });               -- make_it_rain command fun.

                                                                                            -- Fast source the current file :so command.
vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end, { desc = "Source this file to vim"})
