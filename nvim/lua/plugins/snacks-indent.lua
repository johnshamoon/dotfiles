-- I just liked the color
vim.api.nvim_set_hl(0, "SnacksIndent", { fg = "#434C5E" })
return {
  "folke/snacks.nvim",
  lazy = false,
  ---@type snacks.Config
  opts = {
    indent = {
      hl = "SnacksIndent",
      animate = {
        enabled = false,
      },
    },
  },
}
