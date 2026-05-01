return function()
	local status, mason_lspconfig = pcall(require, "mason-lspconfig")
	if not status then
		return
	end

	mason_lspconfig.setup({
		-- List of servers to automatically install
		ensure_installed = {
			"lua_ls", -- Lua
			"pyright", -- Python
			"rust_analyzer", -- Rust
			"html", -- HTML
			"cssls", -- CSS
			"jsonls", -- JSON
			"clangd", -- C/C++
		},
		automatic_installation = true,
	})
end
