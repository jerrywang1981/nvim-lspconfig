local util = require 'lspconfig.util'
local async = require 'lspconfig.async'

return {
  default_config = {
    cmd = { 'LSPServer' },
    filetypes = { 'cangjie' },
    root_dir = function(fname)
      local cjpm_dir = util.root_pattern 'cjpm.toml'(fname)

      return cjpm_dir or util.find_git_ancestor(fname)
    end,
    single_file_support = true,
  },
  docs = {
    description = [[

Cangjie LSP
]],
    default_config = {
      root_dir = [[root_pattern("cjpm.toml",".git")]],
    },
  },
}
