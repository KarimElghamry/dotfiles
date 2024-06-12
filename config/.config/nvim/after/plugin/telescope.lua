local builtin = require("telescope.builtin")
local telescope = require("telescope")

-- setup
telescope.setup({
	extensions = {
		file_browser = {
			hijack_netrw = true,
			hidden = { file_browser = true, folder_browser = true },
			grouped = true,
		},
	},
	pickers = {
		find_files = {
			hidden = true,
		},
	},
	defaults = {
		layout_strategy = "horizontal",
		sorting_strategy = "ascending",
		layout_config = {
			preview_cutoff = 1,
			preview_width = 0.5,
			prompt_position = "top",
			height = 0.9,
			width = 0.9,
		},
	},
})

telescope.load_extension("file_browser")

-- remaps
vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
vim.keymap.set("n", "<leader>fe", telescope.extensions.file_browser.file_browser)
