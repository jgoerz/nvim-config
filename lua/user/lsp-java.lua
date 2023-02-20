
require'lspconfig'.jdtls.setup{
  --[[ on_attach=require'completion'.on_attach, ]]
  cmd = {"~/.local/share/nvim/lsp_servers/jdtls/bin/jdtls.py"},
  root_dir = require'lspconfig/util'.root_pattern(".git", "pom.xml"),
}
