local augroup = vim.api.nvim_create_augroup("user-autocmds", { clear = true })

vim.api.nvim_create_autocmd("TextYankPost", {
  group = augroup,
  desc = "Highlight yanked text",
  callback = function()
    vim.hl.on_yank()
  end,
})

vim.api.nvim_create_autocmd("FileType", {
  group = augroup,
  pattern = "go",
  callback = function()
    vim.bo.expandtab = false
  end,
})

vim.api.nvim_create_autocmd("FileType", {
  group = augroup,
  pattern = {
    "lua",
    "nix",
    "json",
    "jsonc",
    "yaml",
    "html",
    "css",
    "javascript",
    "typescript",
    "javascriptreact",
    "typescriptreact",
    "markdown",
  },
  callback = function()
    vim.bo.tabstop = 2
    vim.bo.shiftwidth = 2
    vim.bo.softtabstop = 2
  end,
})

vim.api.nvim_create_autocmd("FileType", {
  group = augroup,
  pattern = {
    "cpp",
    "c",
  },
  callback = function()
    vim.bo.tabstop = 4
    vim.bo.shiftwidth = 4
    vim.bo.softtabstop = 4
  end,

})

vim.api.nvim_create_autocmd("CursorHold", {
  group = augroup,
  callback = function()
    for _, win in ipairs(vim.api.nvim_tabpage_list_wins(0)) do
      local cfg = vim.api.nvim_win_get_config(win)
      if cfg.relative ~= "" then
        return
      end
    end

    vim.diagnostic.open_float(nil, {
      focusable = false,
      border = "rounded",
      source = "if_many",
      scope = "cursor",
    })
  end,
})
