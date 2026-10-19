require("nvim-treesitter").setup()

require("nvim-treesitter").install({
  "bash",
  "c",
  "cpp",
  "css",
  "dockerfile",
  "go",
  "gomod",
  "gosum",
  "html",
  "javascript",
  "json",
  "lua",
  "markdown",
  "markdown_inline",
  "nix",
  "python",
  "rust",
  "tsx",
  "typescript",
  "vim",
  "vimdoc",
  "yaml",
})

vim.api.nvim_create_autocmd("FileType", {
  group = vim.api.nvim_create_augroup("user-treesitter", { clear = true }),
  pattern = "*",
  callback = function()
    pcall(vim.treesitter.start)
    pcall(function()
      vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
    end)
  end,
})
