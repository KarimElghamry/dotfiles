local utils = require("karim.utils")

-- basic remaps
vim.keymap.set("n", "<leader>tt", utils.toggleTerminal)
vim.keymap.set({ "n", "v" }, "<leader>y", '"+y')
vim.keymap.set("t", "<F2>", [[<C-\><C-n>]])
