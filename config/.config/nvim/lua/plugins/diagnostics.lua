-- enable virtual line diagnostics
vim.diagnostic.config({ virtual_text = true })

return {
	"folke/trouble.nvim",
	cmd = "Trouble",
	opts = {
		focus = true,
	},
	keys = {
		{
			"<leader>tt",
			"<cmd>Trouble diagnostics toggle<cr>",
		},
		{
			"<leader>q",
			"<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
		},
	},
}
