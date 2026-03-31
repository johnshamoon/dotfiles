return {
  {
    "EdenEast/nightfox.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      options = {
        transparent = true,
        styles = {
          keywords = "bold",
          conditionals = "bold",
        },
      },
      palettes = {
        all = {
          comment = "#5979e3",
          LspInlayHint = "#7b748a",
        },
      },
    },
    config = function()
      require("nightfox").setup({
        -- transparent is getting ignored above for some reason
        options = {
          transparent = true,
        },
      })
      vim.cmd([[colorscheme nightfox]])
      vim.api.nvim_set_hl(0, "LspInlayHint", { fg = "#7b748a" })
    end,
  },
  -- {
  --   "catppuccin/nvim",
  --   opts = {
  --     transparent_background = true,
  --     styles = {
  --       -- turn off italics by default
  --       comments = {},
  --       conditionals = {},
  --       keywords = { "bold" },
  --     },

  --     custom_highlights = function(colors)
  --       return {
  --         Comment = { fg = colors.latte_overlay0 },
  --       }
  --     end,
  --   },
  -- },
  -- {
  --   "AlexvZyl/nordic.nvim",
  --   opts = {
  --     transparent = true,
  --   },
  -- },
  -- {
  --   "Mofiqul/dracula.nvim",
  --   opts = {
  --     transparent_bg = true,
  --   },
  -- },
}
