return {
    'Wansmer/treesj',
    cmd = { 'TSJToggle', 'TSJJoin', 'TSJSplit'  },
    keys = {
        { '<leader>tt', '<cmd>TSJToggle<CR>' },
    },
    config = function ()
        require('treesj').setup({
            use_default_keymaps = false,
        })
    end,
}
