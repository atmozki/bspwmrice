return {
	"nvim-tree/nvim-tree.lua",
	version = "*",
	lazy = false,
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		require("nvim-tree").setup {}

		--Keybindindg
		vim.keymap.set("n", "<leader>nn", vim.cmd.NvimTreeToggle)
		vim.keymap.set("n", "<leader>nf", vim.cmd.NvimTreeFindFileToggle)
	end,
}
