--[[ keys.lua ]]

local telescope = require('telescope.builtin')
vim.keymap.set('n', '<Leader>ff', telescope.find_files, {})
vim.keymap.set('n', '<Leader>fG', telescope.git_files, {})
vim.keymap.set('n', '<Leader>fg', telescope.live_grep, {})
vim.keymap.set('n', '<Leader>fs', telescope.grep_string, {})

vim.keymap.set('n', '<Leader>vp', vim.cmd.Ex, {})

local diagnostics_enabled = false
vim.diagnostic.enable(false)

vim.keymap.set('n', '<leader>td', function()
  diagnostics_enabled = not diagnostics_enabled
  vim.diagnostic.enable(diagnostics_enabled)
end, { silent = true, noremap = true })

vim.keymap.set('n', '<leader>th', function()
  hlsearch_enabled = not hlsearch_enabled
  vim.o.hlsearch = hlsearch_enabled
end, { silent = true, noremap = true })
