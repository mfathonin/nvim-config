-- Set <space> as the leader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Install `lazy.nvim` plugin manager
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Configure plugin
require('lazy').setup({
  -- Which-key plugin
  { 
    'folke/which-key.nvim', 
    opts = {
      window = {
        border = "single",
        winblend = 13,
        margin = { 0, 0, 0, 0 }, 
        padding = { 1, 0, 1, 0 },
      },
    } 
  },

  -- "gc" to comment visual region/lines
  { 'numToStr/Comment.nvim', opts = {} },

  -- Add telescope.nvim 
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.4',
    -- or                          , branch = '0.1.x',
    dependencies = { 'nvim-lua/plenary.nvim' }
  },
  {
    "nvim-telescope/telescope-file-browser.nvim",
    dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim", "nvim-tree/nvim-web-devicons" }
  },
  { 
    "nvim-treesitter/nvim-treesitter",
    dependencies = {
      'nvim-treesitter/nvim-treesitter-textobjects',
    },
    build = ":TSUpdate"
  },

  -- Git tools
  { 'tpope/vim-fugitive' },

  -- Theme
  { "rebelot/kanagawa.nvim" },
  { "nvim-tree/nvim-web-devicons" },
})

-- Importing all plugins setup
require("mfathonin")
