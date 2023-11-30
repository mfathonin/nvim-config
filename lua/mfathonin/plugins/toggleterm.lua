require("toggleterm").setup{
  open_mapping = [[<C-\>]],
  shell = 'pwsh',
  size = 20,
}

function _G.set_terminal_keymaps()
  local opts = {buffer = 0}
  vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)
  vim.keymap.set('t', 'jj', [[<C-\><C-n>]], opts)
  vim.keymap.set('t', '<M-h>', [[<Cmd>wincmd h<CR>]], opts)
  vim.keymap.set('t', '<M-j>', [[<Cmd>wincmd j<CR>]], opts)
  vim.keymap.set('t', '<M-k>', [[<Cmd>wincmd k<CR>]], opts)
  vim.keymap.set('t', '<M-l>', [[<Cmd>wincmd l<CR>]], opts)
  vim.keymap.set('t', '<C-w>', [[<C-\><C-n><C-w>]], opts)
end

vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')
