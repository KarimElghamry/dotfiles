local utils = require("karim.utils")

-- basic remaps
vim.keymap.set("n", "<leader>tt", utils.toggleTerminal, { desc = "toggle terminal inside nvim" })
vim.keymap.set({ "n", "v" }, "<leader>y", '"+y', { desc = "yank to system clipboard" })
vim.keymap.set("t", "<F2>", [[<C-\><C-n>]], { desc = "return to normal mode from terminal mode" })

-- diagnostic remaps
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })
vim.keymap.set("n", "[d", vim.diagnostic.goto_next, { desc = "Go to next [D]iagnostic message" })
vim.keymap.set("n", "]d", vim.diagnostic.goto_prev, { desc = "Go to prev [D]iagnostic message" })
