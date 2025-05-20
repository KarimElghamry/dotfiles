-- mason config
require("mason").setup({})
require("mason-lspconfig").setup({
	automatic_enable = true,
	ensure_installed = { "lua_ls", "gopls" },
	handlers = {
		function(server_name)
			require("lspconfig")[server_name].setup({})
		end,
	},
})

-- nvim config lsp
require("lazydev").setup({
	library = {
		-- See the configuration section for more details
		-- Load luvit types when the `vim.uv` word is found
		{ path = "${3rd}/luv/library", words = { "vim%.uv" } },
	},
})

-- cmp config
require("blink.cmp").setup({
	keymap = { preset = "default" },
	appearance = {
		nerd_font_variant = "mono",
	},
	completion = {
		documentation = { auto_show = false },
		list = { selection = { preselect = false, auto_insert = false } },
	},
	sources = {
		default = { "lsp", "path", "buffer" },
	},
	fuzzy = { implementation = "lua" },
	signature = { enabled = true },
})
