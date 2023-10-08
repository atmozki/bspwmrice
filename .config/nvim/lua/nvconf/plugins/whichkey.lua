return {
  "folke/which-key.nvim",
  config = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 300

    local wk = require("which-key")

    -- Define your keybindings separately
    local keybindings = {
	    f = {
		    name = " File",
		    f = "Find File",
		    s = "Find Files Using String",
	    },
	    n = {
		    name = " NvimTree",
		    n = "NvimTree Toggle",
		    f = "NvinTree Find File",
	    },
	    t = {
		    name = " TreeSitter",
		    p = "Playground Toggle",
	    },
	    v = {
		    name = " Vim",
		    h = "Show Help",
	    },
	    g = {
		    name = " Git",
		    s = "Show Status",
	    },
	    a = "Add to Harpoon",
	    u = "Toggle UndoTree",
	    d = "Dashboard",
	    z = "Toggle Zen Mode",
    }

    -- Register the keybindings with which-key
    wk.register(keybindings, { prefix = "<leader>"})
  end,
}
