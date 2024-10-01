local lsp = require('lsp-zero').preset({
  name = 'recommended',
  set_lsp_keymaps = true,
  manage_nvim_cmp = true,
  suggest_lsp_servers = true,
})

vim.diagnostic.config({
  virtual_text = true,
  severity_sort = true,
  float = {
    style = 'minimal',
    border = 'rounded',
    source = 'always',
    header = '',
    prefix = '💣',
  },
})


lsp.ensure_installed({
  'rust_analyzer',
  'eslint',
})

lsp.skip_server_setup({'rust_analyzer'})

lsp.nvim_workspace()

lsp.setup()
