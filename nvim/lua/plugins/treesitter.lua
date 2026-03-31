return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      local configs = require("nvim-treesitter.configs")
      configs.setup({
        ensure_installed = { "fidl", "gn", "json5", "lua", "c", "cpp", "rust", "vim", "java", "python" },
        highlight = {
          enable = true,
          disable = { "cpp", "rust" },
        },
      })
    end,
  },
}
