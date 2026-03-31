local capabilities = require("cmp_nvim_lsp").default_capabilities()
local on_attach = require("on_attach")
local fuchsia = string.find(vim.loop.cwd() or "", "/fuchsia")
local fx_clippy = { overrideCommand = { "fx", "clippy", "-f", "$saved_file", "--raw" } }
return {
  cmd = { "/ssd/fuchsia/prebuilt/third_party/rust-analyzer/rust-analyzer" },
  filetypes = { "rs", "rust" },
  root_dir = "/ssd/fuchsia",
  on_attach = on_attach,
  default_settings = {
    ["rust-analyzer"] = {
      inlayHints = {
        maxLength = 100,
      },
      -- Use fx clippy if we're in the Fuchsia tree.
      checkOnSave = fuchsia and fx_clippy, -- { command = "clippy" },
      cachePriming = { enable = false },
      diagnostics = {
        disabled = { "unresolved-proc-macro", "unresolved-macro-call" },
      },
      completion = {
        callable = { snippets = "none" },
        postfix = { enable = false },
      },
    },
  },
}
