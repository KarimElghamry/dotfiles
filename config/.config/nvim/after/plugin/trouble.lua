require("trouble").setup({ focus = true })

-- diagnostics remap
vim.keymap.set("n", "<leader>tt", "<cmd>Trouble diagnostics toggle<cr>")
vim.keymap.set("n", "<leader>q", "<cmd>Trouble diagnostics toggle filter.buf=0<cr>")
