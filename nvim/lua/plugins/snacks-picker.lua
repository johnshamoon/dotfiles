vim.api.nvim_create_autocmd("ColorScheme", {
  pattern = "*", -- Applies to any color scheme change
  callback = function()
    -- Customize the main picker window
    vim.api.nvim_set_hl(0, "SnacksPicker", {
      bg = "none", -- Set the background to match the colorscheme
      nocombine = true,
    })
    -- Match the picker directories to the directory color group
    vim.api.nvim_set_hl(0, "SnacksPickerDir", { link = "Directory" })
  end,
})

return {
  "folke/snacks.nvim",
  ---@type snacks.Config
  opts = {
    picker = {
      -- prompt = " ",
      layout = {
        preset = "telescope",
      },
    },
    indent = {
      hl = "SnacksIndent",
      animate = {
        enabled = false,
      },
    },
  },
  keys = {
    -- Buffers / Files
    {
      "<leader>o",
      function()
        Snacks.picker.files()
      end,
      desc = "Find Files",
    },
    {
      "<leader>sf",
      function()
        Snacks.picker.smart()
      end,
      desc = "Smart Find Files",
    },
    {
      "<leader>b",
      function()
        Snacks.picker.buffers()
      end,
      desc = "Buffers",
    },
    {
      "<leader>g",
      function()
        Snacks.picker.grep()
      end,
      desc = "Grep",
    },
    {
      "<leader>e",
      function()
        Snacks.explorer()
      end,
      desc = "File Explorer",
    },
    {
      "<leader>s/",
      function()
        Snacks.picker.search_history()
      end,
      desc = "Search History",
    }, -- go back and customize this
    {
      "<leader>m",
      function()
        Snacks.picker.marks()
      end,
      desc = "Marks",
    },
    {
      "<leader>sk",
      function()
        Snacks.picker.keymaps()
      end,
      desc = "Keymaps",
    },

    -- Git
    {
      "<leader>gd",
      function()
        Snacks.picker.git_diff()
      end,
      desc = "Git Diff (Hunks)",
    },
    -- LSP
    {
      "<leader>d",
      function()
        Snacks.picker.lsp_definitions()
      end,
      desc = "Goto Definition",
    },
    {
      "<leader>D",
      function()
        Snacks.picker.lsp_definitions()
      end,
      desc = "Goto Definition",
    },
    {
      "<leader>r",
      function()
        Snacks.picker.lsp_references()
      end,
      nowait = true,
      desc = "References",
    },
    {
      "<leader>I",
      function()
        Snacks.picker.lsp_implementations()
      end,
      desc = "Goto Implementation",
    },
    -- Colorschemes
    {
      "<leader>uC",
      function()
        Snacks.picker.colorschemes()
      end,
      desc = "Colorschemes",
    },
    {
      "<leader>sH",
      function()
        Snacks.picker.highlights()
      end,
      desc = "Highlights",
    },
  },
}
