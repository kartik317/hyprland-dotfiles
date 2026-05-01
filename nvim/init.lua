-- Load lazy.nvim configuration
require("config.lazy")
require("vim-options")
-- Load other configurations safely
local function require_safe(module)
	local status, result = pcall(require, module)
	if not status then
		print("Warning: Could not load " .. module)
		return nil
	end
	return result
end

-- Load configs if they exist
local telescope_config = require_safe("config.telescope")
if telescope_config and type(telescope_config) == "function" then
	telescope_config()
end

local treesitter_confisc = require_safe("config.treesitter")
if treesitter_config and type(treesitter_config) == "function" then
	treesitter_config()
end

local neotree_config = require_safe("config.neotree")
if neotree_config and type(neotree_config) == "function" then
	neotree_config()
end

local lualine_config = require_safe("config.lualine")
if lualine_config and type(lualine_config) == "function" then
	lualine_config()
end

local mason_config = require_safe("config.mason")
if mason_config and type(mason_config) == "function" then
	mason_config()
end

local mason_lspconfig_config = require_safe("config.mason-lspconfig")
if mason_lspconfig_config and type(mason_lspconfig_config) == "function" then
	mason_lspconfig_config()
end

local lsp_config = require_safe("config.lsp")
if lsp_config and type(lsp_config) == "function" then
	lsp_config()
end

local cmp_config = require_safe("config.cmp")
if cmp_config and type(cmp_config) == "function" then
	cmp_config()
end

local none_ls_config = require_safe("config.none-ls")
if none_ls_config and type(none_ls_config) == "function" then
	none_ls_config()
end

local mason_tools_config = require_safe("config.mason-tools")
if mason_tools_config and type(mason_tools_config) == "function" then
	mason_tools_config()
end

-- Set the color scheme after plugins are loaded
vim.cmd.colorscheme("catppuccin")

-- Load keymaps after everything is ready
vim.schedule(function()
	local keymaps = require_safe("config.keymaps")
	if keymaps and type(keymaps) == "function" then
		keymaps()
		print("Keymaps loaded successfully!")
	else
		print("Keymaps not loaded - invalid format")
	end
end)
