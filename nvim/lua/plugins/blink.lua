return {
  {
    "Saghen/blink.cmp",
    lazy = false,
    -- version = "v0.8.2",
    version = "v0.*",
    opts = {
      cmdline = { enabled = false },

      enabled = function()
        return vim.bo.buftype ~= "prompt" and not vim.tbl_contains({ "log" }, vim.bo.filetype)
      end,
      completion = {
        list = {
          selection = {
            preselect = function(ctx)
              -- auto-select the first thing in the list as long as we are not on the cmdline.
              return ctx.mode ~= "cmdline"
                and not vim.tbl_contains({ "log" }, vim.bo.filetype)
                and not require("blink.cmp").snippet_active({ direction = 1 })
            end,
            auto_insert = true,
          },
        },
        trigger = {
          show_on_insert_on_trigger_character = true,
        },
        menu = {
          draw = {
            columns = {
              { "kind_icon", "kind", gap = 1 },
              { "label", "label_description", gap = 1 },
            },
          },
        },
        documentation = {
          auto_show = true,
        },
      },
      appearance = {
        -- Sets the fallback highlight groups to nvim-cmp's highlight groups
        -- Useful for when your theme doesn't support blink.cmp
        -- will be removed in a future release
        use_nvim_cmp_as_default = true,
        -- Set to 'mono' for 'Nerd Font Mono' or 'normal' for 'Nerd Font'
        -- Adjusts spacing to ensure icons are aligned
        nerd_font_variant = "mono",
      },
      keymap = {
        preset = "default",
        ["<Tab>"] = { "select_next", "fallback" },
        ["<S-Tab>"] = { "select_prev", "fallback" },
        ["<Enter>"] = { "accept", "fallback" },
      },
    },
  },
}
