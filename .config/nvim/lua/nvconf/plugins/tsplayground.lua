return {
	'nvim-treesitter/playground',
	config = function()

		--Keybindings
		vim.keymap.set('n', '<leader>tp', vim.cmd.TSPlaygroundToggle)
	end,
}
