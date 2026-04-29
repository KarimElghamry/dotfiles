return {
	"mason-org/mason-lspconfig.nvim",
	opts = {
		automatic_enable = true,
<<<<<<< Updated upstream
		ensure_installed = { "lua_ls", "gopls" },
=======
		ensure_installed = { "lua_ls", "gopls", "basedpyright" },
		handlers = {
			function(server_name)
				if server_name ~= "basedpyright" then
					require("lspconfig")[server_name].setup({})
				end
			end,
		},
>>>>>>> Stashed changes
	},
	dependencies = {
		{ "mason-org/mason.nvim", opts = {} },
		{ "neovim/nvim-lspconfig" },
	},
}
