require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("i", "jj", "<ESC>")

-- map("n", "j", "zzj")

-- harpoon
local harpoon = require("harpoon")
map("n", "<leader>a", function() harpoon:list():add() end, { desc = "Add to harpoon list" })
map("n", "<leader>tt", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, { desc = "Toggle Harpoon Quick menu" })


-- nvim-tmux-navigator

map("n", "<C-h>", "<CMD>TmuxNavigateLeft<CR>", { desc = "Navigate left tmux pane" })
map("n", "<C-j>", "<CMD>TmuxNavigateDown<CR>", { desc = "Navigate down tmux pane" })
map("n", "<C-k>", "<CMD>TmuxNavigateUp<CR>", { desc = "Navigate up tmux pane" })
map("n", "<C-l>", "<CMD>TmuxNavigateRight<CR>", { desc = "Navigate right tmux pane" })
map("n", "<C-\\>", "<CMD>TmuxNavigatePrevious<CR>", { desc = "Navigate to previous tmux pane" })

-- prime MAPs

map("v", "J", ":move '>+1<CR>gv-gv", { desc = "Move selected lines down" })
map("v", "K", ":move '<-2<CR>gv-gv", { desc = "Move selected lines up" })

map("n", "<C-d>", "<C-d>zz", { desc = "Scroll down half page" })
map("n", "<C-u>", "<C-u>zz", { desc = "Scroll up half page" })

map("n", "n", "nzzzv" , { desc = "Move to next search item" })
map("n", "N", "Nzzzv" , { desc = "Move to previous search item" })

map("x", "<leader>p", '"_dP', { desc = "Paste without yanking" })

map("n", "<C-j>", "<cmd>cnext<CR>zz", { desc = "Move to next quickfix item" })
map("n", "<C-k>", "<cmd>cprev<CR>zz", { desc = "Move to previous quickfix item" })
map("n", "<leader>j", "<cmd>lnext<CR>zz", { desc = "Move to next location list item" })
map("n", "<leader>k", "<cmd>lprev<CR>zz", { desc = "Move to previous location list item" })

map("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], { desc = "Substitute word under cursor" })
