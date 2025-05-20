vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function(use)
	-- Packer can manage itself
	use("wbthomason/packer.nvim")

	-- telescope
	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.8",
		requires = { { "nvim-lua/plenary.nvim" } },
	})

	-- oil file browser
	use({
		"stevearc/oil.nvim",
	})

	-- icons
	use({
		"nvim-tree/nvim-web-devicons",
	})

	-- colorscheme
	use({
		"folke/tokyonight.nvim",
	})

	-- treesitter
	use({
		"nvim-treesitter/nvim-treesitter",
		{ run = ":TSUpdate" },
	})

	-- vim-fugitive
	use({
		"tpope/vim-fugitive",
	})

	-- nvim lsp
	use({
		"folke/lazydev.nvim",
	})

	-- lsp
	use({
		"mason-org/mason-lspconfig.nvim",
		requires = {
			{ "mason-org/mason.nvim" },
			{ "neovim/nvim-lspconfig" },
		},
	})

	-- cmp
	use({
		"saghen/blink.cmp",
		requires = {
			"rafamadriz/friendly-snippets",
		},
		tag = "1.*",
	})

	-- trouble [diagnostics]
	use({
		"folke/trouble.nvim",
	})

	-- conform formatter
	use({
		"stevearc/conform.nvim",
	})

	-- auto comment
	use({
		"numToStr/Comment.nvim",
	})
end)
