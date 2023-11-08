-- Set relative number
vim.o.number = true
vim.o.relativenumber = true

-- Disabled highlight on search
vim.o.hlsearch = false
-- vim.o.incseach = true

-- Indenting setting
vim.o.tabstop = 2
vim.o.softtabstop = 2
vim.o.shiftwidth = 2
vim.o.expandtab = true

vim.o.smartindent = true

-- Enable mouse
vim.o.mouse = 'a'

-- Sync os and nvim clipboard
vim.o.clipboard = 'unnamedplus'

vim.o.breakindent = true

-- Disabled wrapping
vim.o.wrap = false

-- Enable Colors
vim.o.termguicolors = true

-- Set scroll offset
vim.o.scrolloff = 8

-- Save undo history
vim.o.undofile = true

-- Case-insensitive searching UNLESS \C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true

-- Decrease update time
vim.o.updatetime = 50
vim.o.timeoutlen = 300

-- Set completeopt to have a better completion experience
vim.o.completeopt = 'menuone,noselect'

-- NOTE: You should make sure your terminal supports this
vim.o.termguicolors = true

-- Keep signcolumn on by default
vim.wo.signcolumn = 'yes'
vim.o.scrolloff = 8

vim.o.colorcolumn = "80" -- adding column mark on 80 chars

-- Decrease update time
vim.o.updatetime = 250
vim.o.timeoutlen = 300

-- Set completeopt to have a better completion experience
vim.o.completeopt = 'menuone,noselect'

-- NOTE: You should make sure your terminal supports this
vim.o.termguicolors = true
