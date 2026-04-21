return {
  {
    "nvim-treesitter/nvim-treesitter",
    branch = "main",
    build = ":TSUpdate",
    config = function()
      local configs = require("nvim-treesitter.config")
      configs.setup({
        ensure_installed = {
          "fidl",
          "gn",
          "json5",
          "c",
          "cpp",
          "rust",
          "vim",
          "java",
          "python",
        },
        highlight = {
          enable = true,
          disable = { "cpp", "rust" },
        },
      })
    end,
  },
}
