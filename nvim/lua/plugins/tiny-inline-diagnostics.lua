return {
  "rachartier/tiny-inline-diagnostic.nvim",
  priority = 1000,

  opts = {
    -- presets: "modern", "classic", "minimal", "powerline", "ghost", "simple", "nonerdfont", "amongus"
    preset = "powerline",

    -- List of filetypes to disable the plugin for
    disabled_ft = {},

    options = {
      multilines = {
        enabled = true,
      },
    },
  },
}
