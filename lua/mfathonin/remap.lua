vim.keymap.set("n", "<C-b>", '<Cmd>NvimTreeToggle<CR>')

-- Move selected line
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Refine "J" on normal mode
vim.keymap.set("n", "J", "mzJ`z")

-- Scroll stay in center
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Search stay in the middle
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- To normal mode
vim.keymap.set("i", "jj", "<Esc>")

-- [[ Window navigation ]]
vim.keymap.set('n', '<M-j>', '<C-w>j')
vim.keymap.set('n', '<M-k>', '<C-w>k')
vim.keymap.set('n', '<M-h>', '<C-w>h')
vim.keymap.set('n', '<M-l>', '<C-w>l')

vim.keymap.set('n', '<M-q>', '<Cmd>bp<bar>sp<bar>bn<bar>bd<CR>')

-- [[ Tab navigation ]]
vim.keymap.set('n', '<M-t>', 'gt')

-- [[ Telescope key binding ]]
local builtin = require('telescope.builtin')

vim.keymap.set('n', '<C-p>', builtin.git_files)
vim.keymap.set('n', '<leader>gf', builtin.git_files, {
  desc = "[G]it [F]ile tree"
})
vim.keymap.set('n', '<leader>wf', '<Cmd>Telescope file_browser<CR>', {
  desc = "[W]orkspace [F]ile"
})
vim.keymap.set('n', '<leader>sg', function()
  builtin.grep_string({ search = vim.fn.input('Grep > ') });
end, {
  desc = '[S]earch using [G]rep'
})
vim.keymap.set('n', '<leader>/', builtin.buffers, { 
  desc = "File Buffers"
})

-- Git tools by tpope/vim-fugitive
vim.keymap.set('n', '<leader>gs', '<Cmd>NvimTreeClose<CR><Cmd>vertical G<CR><Cmd>vertical resize 70<CR>', { 
  desc = '[G]it [S]tatus'
})
vim.keymap.set('n', '<leader>ga', '<Cmd>Git add -p<CR>', { 
  desc = '[G]it [A]dd'
})

require("which-key").register {
  ['<leader>g'] = { name = '[G]it', _ = 'which_key_ignore' },
  ['<leader>s'] = { name = '[S]earch', _ = 'which_key_ignore' },
  ['<leader>w'] = { name = '[W]orkspace', _ = 'which_key_ignore' },
  -- ['<leader>c'] = { name = '[C]ode', _ = 'which_key_ignore' },
  -- ['<leader>d'] = { name = '[D]ocument', _ = 'which_key_ignore' },
  -- ['<leader>r'] = { name = '[R]ename', _ = 'which_key_ignore' },
}
