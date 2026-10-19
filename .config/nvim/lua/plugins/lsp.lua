vim.lsp.config("gopls", {
  filetypes = { "go", "gomod", "gosum", "gotmpl", "gohtmltmpl", "gotexttmpl" },
  settings = {
    gopls = {
      analyses = { unusedparams = true },
      staticcheck = true,
      fileWatcher = "fsnotify",
    },
  },
})

vim.lsp.config("rust_analyzer", {
  settings = {
    ["rust-analyzer"] = {
      cargo = { allFeatures = true },
      check = { command = "clippy" },
    },
  },
})

vim.lsp.enable({
  "clangd", -- C / C++
  "gopls", -- Go
  "rust_analyzer", -- Rust
  "nixd", -- Nix
  "lua_ls", -- Lua
  "pyright", -- Python
  "bashls", -- Bash
  "marksman", -- Markdown
  "dockerls", -- Docker
  "docker_compose_language_service",
  "html", -- Frontend
  "cssls",
  "vtsls", -- TS/JS (tsserver replacement)
  "jsonls",
  "yamlls",
})

vim.api.nvim_create_autocmd("LspAttach", {
  group = vim.api.nvim_create_augroup("user-lsp-attach", { clear = true }),
  callback = function(args)
    local map = function(mode, lhs, rhs, desc)
      vim.keymap.set(mode, lhs, rhs, { buffer = args.buf, desc = desc })
    end

    map("n", "gd", vim.lsp.buf.definition, "Go to definition")
    map("n", "gr", vim.lsp.buf.references, "References")
    map("n", "gi", vim.lsp.buf.implementation, "Implementation")
    map("n", "K", vim.lsp.buf.hover, "Hover")
    map("n", "<leader>rn", vim.lsp.buf.rename, "Rename")
    map("n", "<leader>ca", vim.lsp.buf.code_action, "Code action")
  end,
})
