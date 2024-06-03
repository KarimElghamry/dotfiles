local builtin = require('telescope.builtin')
local telescope = require('telescope')

-- setup
telescope.setup {
    pickers = {
        find_files = {
            hidden = true
        }
    }
}

-- remaps
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
