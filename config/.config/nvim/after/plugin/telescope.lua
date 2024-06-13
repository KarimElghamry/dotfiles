-- vars and inits
local builtin = require("telescope.builtin")
local telescope = require("telescope")
local is_inside_git_directory = {}

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
vim.keymap.set("n", "<leader>ff", function()
	local cwd = vim.fn.getcwd()
	if is_inside_git_directory[cwd] == nil then
		vim.fn.system("git rev-parse --is-inside-work-tree")
		is_inside_git_directory[cwd] = vim.v.shell_error == 0
	end

	if is_inside_git_directory[cwd] then
		builtin.git_files()
	else
		builtin.find_files()
	end
end, {})
vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
vim.keymap.set("n", "<leader>fe", telescope.extensions.file_browser.file_browser)
vim.keymap.set("n", "<leader>fh", builtin.buffers, {})
