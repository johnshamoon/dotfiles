local capabilities = require("cmp_nvim_lsp").default_capabilities()
local on_attach = require("on_attach")
local kFuchsiaDir = string.find(vim.loop.cwd() or "", "/fuchsia")
return {
  cmd = { "clangd" },
  filetypes = { "c", "h", "cc", "cpp" },
  on_attach = on_attach,
  capabilities = capabilities,
  root_dir = kFuchsiaDir,
}
