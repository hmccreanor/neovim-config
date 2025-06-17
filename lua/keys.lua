--[[ keys.lua ]]
local map = vim.api.nvim_set_keymap

map('n', '<Leader>n', [[:NvimTreeToggle]], {})
map('n', '<Leader>ff', [[:Telescope find_files]], {})
map('n', '<Leader>fg', [[:Telescope live_grep]], {})
map('n', '<Leader>fs', [[:Telescope grep_string]], {})

local diagnostics_enabled = true
vim.diagnostic.disable()

vim.keymap.set('n', '<leader>td', function()
  diagnostics_enabled = not diagnostics_enabled
  if diagnostics_enabled then
    vim.diagnostic.enable()
  else
    vim.diagnostic.disable()
  end
end, { silent = true, noremap = true })

vim.keymap.set('n', '<leader>th', function()
  hlsearch_enabled = not hlsearch_enabled
  vim.o.hlsearch = hlsearch_enabled
end, { silent = true, noremap = true })
