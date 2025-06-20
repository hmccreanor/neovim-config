--[[ init.lua ]]

-- LEADER
-- These keybindings need to be defined before the first /
-- is called; otherwise, it will default to "\"
vim.g.mapleader = ","
vim.g.localleader = "\\"

-- IMPORTS
require('vars')      -- Variables
require('opts')      -- Options
require('keys')      -- Keymaps
require('plug')      -- Plugins

require('nvim-tree').setup{}

require('nvim-autopairs').setup{}
require('Comment').setup{}
require('nvim-surround').setup{}

require("mason").setup()
require("mason-lspconfig").setup()

