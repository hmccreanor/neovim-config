--[[ opts.lua ]]
local opt = vim.opt

-- [[ Context ]]
opt.number = true                -- bool: Show line numbers
opt.relativenumber = true        -- bool: Show relative line numbers
opt.scrolloff = 4                -- int:  Min num lines of context
-- opt.signcolumn = "yes"           -- str:  Show the sign column

-- [[ Filetypes ]]
opt.encoding = 'utf8'            -- str:  String encoding to use
opt.fileencoding = 'utf8'        -- str:  File encoding to use

-- [[ Theme ]]
opt.syntax = "ON"                -- str:  Allow syntax highlighting
opt.termguicolors = true         -- bool: If term supports ui color then enable
vim.cmd [[colorscheme zaibatsu]] -- set colour scheme as zaibatsu

-- [[ Search ]]
opt.ignorecase = true            -- bool: Ignore case in search patterns
opt.smartcase = true             -- bool: Override ignorecase if search contains capitals
opt.incsearch = true             -- bool: Use incremental search
opt.hlsearch = false             -- bool: Highlight search matches

-- [[ Whitespace ]]
opt.expandtab = true             -- bool: Use spaces instead of tabs
opt.shiftwidth = 2               -- num:  Size of an indent
opt.softtabstop = 2              -- num:  Number of spaces tabs count for in insert mode
opt.tabstop = 2                  -- num:  Number of spaces tabs count for

-- [[ Splits ]]
opt.splitright = true            -- bool: Place new window to right of current one
opt.splitbelow = true            -- bool: Place new window below the current one

-- [[ Wildmenu (command line autocomplete )]]
opt.wildmenu = true              -- bool: Use wildmenu for better command line autocomplete
opt.wildmode = "longest:full,full" -- string: on tab, autocomplete to longest match and then cycle through remaining options with other tabs

opt.foldmethod = 'indent'
opt.foldlevel = 99         -- allow folds to be fully expanded
opt.foldlevelstart = 99   -- start with everything unfolded
opt.foldenable = true
