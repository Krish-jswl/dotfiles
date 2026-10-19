local opt = vim.opt
local g = vim.g

g.mapleader = " "
g.maplocalleader = " "
g.netrw_banner = 0

opt.number = true
opt.relativenumber = true
opt.termguicolors = true
opt.signcolumn = "yes"
opt.cursorline = true
opt.showmode = false
opt.scrolloff = 8
opt.winblend = 0
opt.pumblend = 0
opt.winborder = "rounded"
opt.updatetime = 300

opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.smartindent = true
opt.wrap = true

opt.ignorecase = true
opt.smartcase = true

opt.undofile = true
opt.swapfile = false

opt.mouse = "a"
opt.clipboard = "unnamedplus"

vim.diagnostic.config({
  virtual_text = false,
  underline = true,
  update_in_insert = false,
  severity_sort = true,

  signs = {
    text = {
      [vim.diagnostic.severity.ERROR] = "󰅚 ",
      [vim.diagnostic.severity.WARN] = "󰀪 ",
      [vim.diagnostic.severity.INFO] = "󰋽 ",
      [vim.diagnostic.severity.HINT] = "󰌶 ",
    },
  },

  float = {
    border = "rounded",
    source = "if_many",
  },
})
