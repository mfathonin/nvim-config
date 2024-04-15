-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

local function open_tab_silent(node)
  local api = require("nvim-tree.api")

  api.node.open.tab(node)
  vim.cmd.tabprev()

end

local function open_tab(node)
  local api = require('nvim-tree.api')

  api.node.open.tab(node)
  vim.cmd.tabprev()
  vim.cmd('NvimTreeClose')
  vim.cmd.tabnext()

end

-- Custom keymap
local function my_on_attach(bufnr)
  local api = require "nvim-tree.api"

  local function opts(desc)
    return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
  end

  -- default mappings
  api.config.mappings.default_on_attach(bufnr)

  -- custom mappings
  vim.keymap.set('n', 'l', api.node.open.edit, opts('Open'))
  vim.keymap.set('n', 'h', api.node.navigate.parent_close, opts('Collapse'))
  vim.keymap.set('n', '<CR>', function()
    api.node.open.edit()
    vim.cmd('NvimTreeClose')
  end, opts('Open'))
  vim.keymap.set('n', 't', open_tab, opts('Open in new tab'))
  vim.keymap.set('n', 'T', open_tab_silent, opts('Open in new tab (Silent)'))
  vim.keymap.set('n', '?', api.tree.toggle_help, opts('Help'))
end

require("nvim-tree").setup({
  on_attach = my_on_attach,
  sort_by = "case_sensitive",
  view = {
    width = 40,
  },
  renderer = {
    group_empty = true,
    root_folder_label = false,
  },
  filters = {
    dotfiles = false,
    git_ignored = false,
    git_clean = false,
    custom = {
      "node_modules",
    },
  },
})
