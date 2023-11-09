require('telescope').setup({
  pickers = {
    find_files = {
      theme = 'dropdown',
    }
  },
})

local builtin = require('telescope.builtin')

vim.keymap.set('n', '<C-p>', builtin.git_files)
vim.keymap.set('n', '<leader>pf', builtin.find_files, {
  desc = "[P]roject [F]ile"
})
vim.keymap.set('n', '<leader>ps', function()
  builtin.grep_string({ search = vim.fn.input('Grep > ') });
end, {
  desc = '[P]roject [S]earch'
})
