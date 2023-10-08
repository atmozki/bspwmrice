-- Vim Set/Options

vim.g.mapleader = " "

-- Relativenumber
vim.opt.nu = true
vim.opt.relativenumber = true

-- 4 Space Indenting
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- Line Wrap
vim.opt.wrap = false

-- Vim Backup Disabled and Enable UndoTree Long running Undo.
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

-- Search Highlighting
vim.opt.hlsearch = false
vim.opt.incsearch = true

-- Terminal Colors
vim.opt.termguicolors = true

-- Scroll Length Max 8 Lines
vim.opt.scrolloff = 8

-- Fast Updatetime for Vim
vim.opt.updatetime = 50
