return {
	'nvim-telescope/telescope.nvim', tag = '0.1.3',
	dependencies = { 'nvim-lua/plenary.nvim' },
	config = function()
		local builtin = require('telescope.builtin')

		--Keybindings
		vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
		vim.keymap.set('n', '<C-p', builtin.git_files, { desc = "Find Git Files Only" })
		vim.keymap.set('n', '<leader>fs', function()
			builtin.grep_string({ search = vim.fn.input("Grep > ") })
		end, {})
		vim.keymap.set('n', '<leader>vh', builtin.help_tags, {})
	end
}


