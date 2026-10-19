require("colorizer").setup({
  user_commands = true,

  options = {
    parsers = {
      css = true,
      css_fn = true,

      hex = {
        default = true,
        rrggbbaa = true,
        hash_aarrggbb = true,
        aarrggbb = true,
      },

      tailwind = { enable = true },
    },

    display = {
      mode = "background",
    },
  },
})
