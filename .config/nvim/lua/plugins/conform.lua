require("conform").setup({
  formatters_by_ft = {
    lua = { "stylua" },

    nix = { "nixfmt" },

    c = { "clang_format" },
    cpp = { "clang_format" },

    go = { "gofmt" },

    rust = { "rustfmt" },

    python = { "black" },

    sh = { "shfmt" },

    javascript = { "prettier" },
    javascriptreact = { "prettier" },

    typescript = { "prettier" },
    typescriptreact = { "prettier" },

    json = { "prettier" },
    jsonc = { "prettier" },

    yaml = { "prettier" },

    html = { "prettier" },
    css = { "prettier" },

    markdown = { "prettier" },
  },
})

vim.keymap.set("n", "<leader>cf", function()
  require("conform").format({ async = true, lsp_format = "fallback" })
end, { desc = "Format buffer" })
