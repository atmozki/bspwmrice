return {
	'mbbill/undotree',
	config = function()

		--Keybindings
		vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)
	end
}
