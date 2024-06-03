local lsp_zero = require('lsp-zero')
local cmp = require("cmp")

-- auto complete mapping
cmp.setup({
    mapping = {
        ['<C-y>'] = cmp.mapping.confirm({select = true})
    }
})

-- format on save
lsp_zero.format_on_save({
  format_opts = {
    async = false,
    timeout_ms = 10000,
  },
  servers = {
    ['tsserver'] = {'javascript', 'typescript'},
    ['gopls'] = {'go'}
  }
})

-- lsp init
lsp_zero.on_attach(function(_, bufnr)
  lsp_zero.default_keymaps({buffer = bufnr})
end)

-- mason config
require('mason').setup({})
require('mason-lspconfig').setup({
	ensure_installed = {"lua_ls", "gopls", "tsserver"},
	handlers = {
		function(server_name)
			require('lspconfig')[server_name].setup({})
		end,
  },
})
