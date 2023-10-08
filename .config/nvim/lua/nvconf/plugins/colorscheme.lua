return {
	"folke/tokyonight.nvim",
	lazy = false,
	priority = 1000,
	config = function()
		color = color or "tokyonight-night"
		--load colorscheme here
		vim.cmd.colorscheme(color)
	end,
} 
