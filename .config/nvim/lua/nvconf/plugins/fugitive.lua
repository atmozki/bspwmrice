return {
	'tpope/vim-fugitive',
	config = function()

		--Keybinding
		vim.keymap.set("n", "<leader>gs", vim.cmd.Git)
	end
}
