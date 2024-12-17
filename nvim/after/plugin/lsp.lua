-- Reserve a space in the gutter for diagnostics
vim.opt.signcolumn = 'yes'

-- Add cmp_nvim_lsp capabilities settings to lspconfig
-- This should be executed before you configure any language server
local lspconfig_defaults = require('lspconfig').util.default_config
lspconfig_defaults.capabilities = vim.tbl_deep_extend(
'force',
lspconfig_defaults.capabilities,
require('cmp_nvim_lsp').default_capabilities()
)

-- This is where you enable features that only work
-- if there is a language server active in the file
vim.api.nvim_create_autocmd('LspAttach', {
	desc = 'LSP actions',
	callback = function(event)
		local opts = {buffer = event.buf}

		vim.keymap.set('n', 'K', '<cmd>lua vim.lsp.buf.hover()<cr>', opts)
		vim.keymap.set('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<cr>', opts)
		vim.keymap.set('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<cr>', opts)
		vim.keymap.set('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<cr>', opts)
		vim.keymap.set('n', 'go', '<cmd>lua vim.lsp.buf.type_definition()<cr>', opts)
		vim.keymap.set('n', 'gr', '<cmd>lua vim.lsp.buf.references()<cr>', opts)
		vim.keymap.set('n', 'gs', '<cmd>lua vim.lsp.buf.signature_help()<cr>', opts)
		vim.keymap.set('n', '<F2>', '<cmd>lua vim.lsp.buf.rename()<cr>', opts)
		vim.keymap.set({'n', 'x'}, '<F3>', '<cmd>lua vim.lsp.buf.format({async = true})<cr>', opts)
		vim.keymap.set('n', '<F4>', '<cmd>lua vim.lsp.buf.code_action()<cr>', opts)
	end,
})


local cmp = require('cmp')

cmp.setup({
	sources = {
		{name = 'nvim_lsp'},
	},
	snippet = {
		expand = function(args)
			-- You need Neovim v0.10 to use vim.snippet
			vim.snippet.expand(args.body)
		end,
	},
	mapping = cmp.mapping.preset.insert({}),
})

-- Mason setup below --

local lsp_zero = require('lsp-zero')

require('mason').setup()

-- Mason-LSPConfig : ensures servers are installed
require('mason-lspconfig').setup({
	ensure_installed = {"clangd","lua_ls","eslint",}, -- No pre-installed servers
	automatic_installation = true,
	handlers = {
		function (server_name) 
			require('lspconfig')[server_name].setup({})
		end,



--specific handler for 'lua-ls--
["lua_ls"] = function() 
	require('lspconfig').lua_ls.setup({
		settings = {
			Lua = {
				diagnostics = {
					globals = { 'vim' }, -- allows vim as global var
				},
			},
		},
	})
end,
},
})


