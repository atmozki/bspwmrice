return {
	"folke/zen-mode.nvim",
	config = function()
	
		--Keybindings
		vim.keymap.set("n", "<leader>z", vim.cmd.ZenMode)
	end
}
