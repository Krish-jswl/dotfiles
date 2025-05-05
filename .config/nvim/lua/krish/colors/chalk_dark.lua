-- ~/.config/nvim/colors/chalk_dark.lua
vim.cmd("highlight clear")
vim.o.background = "dark"
vim.cmd("syntax reset")
vim.g.colors_name = "chalk_dark"

local colors = {
  fg = "#eaeaea", -- soft white
  bg = "NONE", -- respect terminal black

  red = "#ff6e79",
  green = "#a8ff60",
  yellow = "#ffffb6",
  blue = "#96cbfe",
  magenta = "#ff73fd",
  cyan = "#5fffff",
  gray = "#999999",
}

-- Set highlights
local set = vim.api.nvim_set_hl
set(0, "Normal", { fg = colors.fg, bg = colors.bg })
set(0, "Comment", { fg = colors.gray, italic = true })
set(0, "String", { fg = colors.green })
set(0, "Function", { fg = colors.blue })
set(0, "Identifier", { fg = colors.cyan })
set(0, "Keyword", { fg = colors.red })
set(0, "Statement", { fg = colors.magenta })
set(0, "Type", { fg = colors.yellow })
set(0, "Number", { fg = colors.yellow })
set(0, "Constant", { fg = colors.magenta })
set(0, "Visual", { bg = "#444444" })
set(0, "CursorLine", { bg = "#1c1c1c" })
set(0, "LineNr", { fg = "#444444" })
set(0, "StatusLine", { fg = colors.fg, bg = "#222222" })

-- Optional: LSP diagnostics
set(0, "DiagnosticError", { fg = colors.red })
set(0, "DiagnosticWarn", { fg = colors.yellow })
set(0, "DiagnosticInfo", { fg = colors.blue })
set(0, "DiagnosticHint", { fg = colors.cyan })
	

