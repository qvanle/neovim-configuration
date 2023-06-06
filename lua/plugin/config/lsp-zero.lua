local lsp = require('lsp-zero').preset({
  name = 'recommended',
  set_lsp_keymaps = true,
  manage_nvim_cmp = true,
  suggest_lsp_servers = true,
})

lsp.ensure_installed({
  'rust_analyzer',
  'tsserver',
  'eslint',
})

lsp.skip_server_setup({'rust_analyzer'})

lsp.nvim_workspace()

lsp.setup()
