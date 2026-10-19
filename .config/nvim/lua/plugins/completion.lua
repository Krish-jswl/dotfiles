require("blink.cmp").setup({
  appearance = {
    nerd_font_variant = "mono",
  },

  completion = {
    menu = { border = "rounded", winblend = 0 },
    documentation = {
      auto_show = true,
      auto_show_delay_ms = 200,
    },
  },

  keymap = {
    preset = "none", -- or "default" | "enter" | "super-tab"

    -- open / close
    ["<C-Space>"] = { "show", "show_documentation", "hide_documentation" },
    ["<C-e>"]     = { "hide", "fallback" },

    -- accept
    ["<CR>"]  = { "accept", "fallback" },
    ["<C-y>"] = { "select_and_accept" },

    -- navigate the menu
    ["<C-n>"]  = { "select_next", "fallback_to_mappings" },
    ["<C-p>"]  = { "select_prev", "fallback_to_mappings" },
    ["<Down>"] = { "select_next", "fallback" },
    ["<Up>"]   = { "select_prev", "fallback" },

    -- scroll documentation
    ["<C-b>"] = { "scroll_documentation_up", "fallback" },
    ["<C-f>"] = { "scroll_documentation_down", "fallback" },

    -- snippet placeholders (luasnip)
    ["<Tab>"]   = { "snippet_forward", "fallback" },
    ["<S-Tab>"] = { "snippet_backward", "fallback" },

    -- signature help
    ["<C-k>"] = { "show_signature", "hide_signature", "fallback" },
  },

  appearance = {
    nerd_font_variant = "mono",
  },

  signature = {
    enabled = true,
  },

  sources = {
    default = { "lsp", "path", "buffer", "snippets" },
  },

  snippets = { preset = "luasnip" },
})
