local M = {}

local float = { buf = nil, win = nil }

local function open_float()
  local width = math.floor(vim.o.columns * 0.8)
  local height = math.floor(vim.o.lines * 0.8)

  if not float.buf or not vim.api.nvim_buf_is_valid(float.buf) then
    float.buf = vim.api.nvim_create_buf(false, true)
  end

  float.win = vim.api.nvim_open_win(float.buf, true, {
    relative = "editor",
    width = width,
    height = height,
    row = math.floor((vim.o.lines - height) / 2),
    col = math.floor((vim.o.columns - width) / 2),
    style = "minimal",
    border = "rounded",
  })

  if vim.bo[float.buf].buftype ~= "terminal" then
    vim.cmd.terminal()
  end

  vim.cmd.startinsert()
end

function M.toggle_float()
  if float.win and vim.api.nvim_win_is_valid(float.win) then
    vim.api.nvim_win_hide(float.win)
    float.win = nil
    return
  end

  open_float()
end

function M.horizontal()
  vim.cmd("botright split | resize 15 | terminal")
  vim.cmd.startinsert()
end

vim.keymap.set({ "n", "t" }, "<C-\\>", M.toggle_float, { desc = "Toggle floating terminal" })
vim.keymap.set("n", "<leader>th", M.horizontal, { desc = "Horizontal split terminal" })
vim.keymap.set("t", "<Esc>", [[<C-\><C-n>]], { desc = "Exit terminal mode" })

return M
