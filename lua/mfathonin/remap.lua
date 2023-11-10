vim.keymap.set("n", "<C-b>", vim.cmd.Ex)

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

-- [[ Telescope key binding ]]
local builtin = require('telescope.builtin')

vim.keymap.set('n', '<C-p>', builtin.git_files)
vim.keymap.set('n', '<leader>gf', builtin.git_files, {
  desc = "[G]it [F]ile tree"
})
vim.keymap.set('n', '<leader>wf', builtin.find_files, {
  desc = "[W]orkspace [F]ile"
})
vim.keymap.set('n', '<leader>ss', function()
  builtin.grep_string({ search = vim.fn.input('Grep > ') });
end, {
  desc = '[S]earch [S]tring using Grep'
})

require("which-key").register {
  ['<leader>g'] = { name = '[G]it', _ = 'which_key_ignore' },
  ['<leader>s'] = { name = '[S]earch', _ = 'which_key_ignore' },
  ['<leader>w'] = { name = '[W]orkspace', _ = 'which_key_ignore' },
  -- ['<leader>c'] = { name = '[C]ode', _ = 'which_key_ignore' },
  -- ['<leader>d'] = { name = '[D]ocument', _ = 'which_key_ignore' },
  -- ['<leader>r'] = { name = '[R]ename', _ = 'which_key_ignore' },
}
