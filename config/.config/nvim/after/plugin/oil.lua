local oil = require("oil")

oil.setup({
	columns = {
		"icon",
	},
	view_options = {
		show_hidden = true,
	},
})

vim.keymap.set("n", "<leader>fe", "<CMD>Oil<CR>", { desc = "open oil in parent \
directory" })
