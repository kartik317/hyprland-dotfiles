return {
    'nvim-treesitter/nvim-treesitter',
    lazy = false,
    build = ':TSUpdate',
    config = function()
	local configs = require("nvim-treesitter.configs")
	configs.setup({
	    highlight = {
		enable = true,
	    },
	    indent = { enable = true },
	    autotage = { enable = true },
	    ensure_installed = {
		"lua",
		"python",
		"javascript",
		"typescript",
		"markdown",
		"markdown_inline",
	    },
	    auto_install = false,
	})
    end
}
