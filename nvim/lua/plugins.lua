return {
  -- themes
  { "arcticicestudio/nord-vim" },
  { "joshdick/onedark.vim" },
  { "fratajczak/one-monokai-vim" },
  { "lewpoly/sherbet.nvim" },
  { "MTDL9/vim-log-highlighting" },
  { "folke/tokyonight.nvim" },
  { "rebelot/kanagawa.nvim" },
  { "rubberduck203/aosp-vim" },
  {
    "lukoshkin/highlight-whitespace",
    opts = {
      palette = {
        -- Use this setting for all filetypes.
        other = {
          tws = "DarkGray",
        },
      },
    },
  },
  -- buffers and sessions
  { "dhruvasagar/vim-zoom" },

  -- autocomplete
  { "hrsh7th/cmp-nvim-lsp" },
  { "hrsh7th/cmp-buffer" },
  { "hrsh7th/cmp-path" },
  -- { "hrsh7th/cmp-cmdline" },
  { "hrsh7th/nvim-cmp" },
  { "hrsh7th/cmp-vsnip" },
  { "hrsh7th/vim-vsnip" },
  { "onsails/lspkind.nvim" },

  {
    "felpafel/inlay-hint.nvim",
    opts = {
      virt_text_pos = "eol",
      highlight_group = "LspInlayHint",
    },
  },

  -- status line
  { "nvim-lualine/lualine.nvim" },

  -- rust
  { "rust-lang/rust.vim" },

  -- debugging
  { "nvim-lua/plenary.nvim" },
  { "mfussenegger/nvim-dap" },

  -- bazel
  {
    "bazelbuild/vim-bazel",
    dependencies = { "google/vim-maktaba" },
  },

  {
    "https://gn.googlesource.com/gn",
    rtp = "/misc/vim",
  },

  { "gutenye/json5.vim" },

  -- shortcuts
  { "tpope/vim-commentary" },

  -- generic formatter
  { "stevearc/conform.nvim" },
  {
    "catgoose/nvim-colorizer.lua",
    event = "BufReadPre",
    opts = {
      user_default_options = {
        names = false,
      },
    },
  },
}
