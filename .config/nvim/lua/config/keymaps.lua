local map = vim.keymap.set

map("n", "<leader>nh", "<cmd>nohlsearch<CR>", { desc = "Clear search highlight" })

map("n", "<C-d>", "<C-d>zz", { desc = "Move down in buffer, centered" })
map("n", "<C-u>", "<C-u>zz", { desc = "Move up in buffer, centered" })

map("n", "n", "nzzzv", { desc = "Next search result, centered" })
map("n", "N", "Nzzzv", { desc = "Previous search result, centered" })

map("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move selected lines down" })
map("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move selected lines up" })

map("n", "<", "<gv", { desc = "Unindent and keep selection" })
map("n", ">", ">gv", { desc = "Indent and keep selection" })
