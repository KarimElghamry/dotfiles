return {
	"stevearc/oil.nvim",
	---@module 'oil'
	---@type oil.SetupOpts
	opts = {
		columns = {
			"icon",
		},
		view_options = {
			show_hidden = true,
		},
	},
	dependencies = { { "echasnovski/mini.icons", opts = {} } },
	keys = {
		{
			"<leader>fe",
			"<CMD>Oil<CR>",
			desc = "open oil in parent directory",
		},
	},
	lazy = false,
}
