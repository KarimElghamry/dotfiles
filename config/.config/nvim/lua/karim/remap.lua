local utils = require("karim.utils")

-- basic remaps
vim.keymap.set("n", "<leader>fe", vim.cmd.Ex)
vim.keymap.set("n", "<leader>tt", utils.toggleTerminal)