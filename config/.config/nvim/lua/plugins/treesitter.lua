return {
	"nvim-treesitter/nvim-treesitter",
	opts = {
		ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "typescript", "javascript", "go", "python" },
		sync_install = false,
		auto_install = true,
		highlight = {
			enable = true,
			additional_vim_regex_highlighting = false,
		},
	},
	build = ":TSUpdate",
}
