-- tokyo night
local tokyo = require("tokyonight")

tokyo.setup({
	style = "night",
})

vim.cmd([[colorscheme tokyonight]])

-- transparent background
-- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
