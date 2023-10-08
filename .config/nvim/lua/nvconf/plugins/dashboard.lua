return {
	'glepnir/dashboard-nvim',
	event = 'VimEnter',
	config = function()
		require('dashboard').setup {
			-- config
			theme = 'hyper',
			shortcut_type = 'number',
			config = {
				shortcut = {
					{ desc = '@AtmoZki', group = 'DashboardShortCut'},
				},
				packages = { enable = true }, -- show how many plugins neovim loaded
				project = { enable = false, limit = 8 }, -- Project List Disabled
				week_header = { enable = true }, -- Header Type Show Weekdays as header
				footer = { '', 'Nvim huh?', 'Shift :q - to Quit.. LOL' }, -- footer
			},	
		}

		-- Keybindings
		vim.keymap.set("n", "<leader>d", vim.cmd.Dashboard)
	end,
	dependencies = { {'nvim-tree/nvim-web-devicons'}}
}
