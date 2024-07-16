local utils = require('utils')
local iron = require('iron.core')

utils.register_iron_keys('%s')

vim.g.julia_indent_align_funcargs = 0
vim.g.julia_indent_align_brackets = 0
vim.g.julia_indent_align_import = 1

vim.keymap.set(
  'n',
  '<localleader>r.',
  function() iron.send(nil, 'import Pkg; Pkg.activate(".")') end,
  {silent = true, buffer = true, desc = "Activate package in CWD"}
)

-- Load Julia language server
require('lspconfig').julials.setup{}
