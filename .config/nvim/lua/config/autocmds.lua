local augroup = vim.api.nvim_create_augroup("user-autocmds", {

  clear = true,
})

-- Highlight yanked text
vim.api.nvim_create_autocmd("TextYankPost", {
  group = augroup,
  desc = "Highlight yanked text",
  callback = function()
    vim.hl.on_yank()
  end,
})

-- Go indentation
vim.api.nvim_create_autocmd("FileType", {
  group = augroup,
  pattern = "go",
  callback = function()
    vim.bo.expandtab = false
    vim.bo.tabstop = 4
    vim.bo.shiftwidth = 4
    vim.bo.softtabstop = 0
  end,
})

-- 2-space indentation
vim.api.nvim_create_autocmd("FileType", {
  group = augroup,
  pattern = {
    "lua", "nix", "json", "jsonc", "yaml",
    "html", "css", "javascript", "typescript",
    "javascriptreact", "typescriptreact",
    "markdown", "python",
  },
  callback = function()
    vim.bo.expandtab = true
    vim.bo.tabstop = 2
    vim.bo.shiftwidth = 2
    vim.bo.softtabstop = 2
  end,
})

-- 4-space indentation
vim.api.nvim_create_autocmd("FileType", {
  group = augroup,
  pattern = { "c", "cpp" },
  callback = function()
    vim.bo.expandtab = true
    vim.bo.tabstop = 4
    vim.bo.shiftwidth = 4
    vim.bo.softtabstop = 4
  end,
})

-- Diagnostic floating window
vim.api.nvim_create_autocmd("CursorHold", {
  group = augroup,
  desc = "Show diagnostics on cursor hold",
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
      close_events = {
        "CursorMoved",
        "BufLeave",
        "InsertEnter",
      },
    })
  end,
})

vim.opt.updatetime = 300
