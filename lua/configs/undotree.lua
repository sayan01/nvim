local map = vim.keymap.set

map("n", "<leader>u", vim.cmd.UndotreeToggle, { desc = "Toggle undotree" })
