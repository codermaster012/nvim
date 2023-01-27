require('nvim-lsp-setup').setup({
	servers = {
		-- clangd = require('nvim-lsp-setup.clangd_extensions').setup({}),
		jdtls = {},
		kotlin_language_server = {},
		-- sumneko_lua = {},
		-- pyright = {},
		-- rust_analyzer = {}
	}
})

local function lsp_highlight_document(client)
	-- if client.server_capabilities.document_highlight then
	local status_ok, illuminate = pcall(require, "illuminate")
	if not status_ok then
		return
	end
	illuminate.on_attach(client)
	-- end
end
