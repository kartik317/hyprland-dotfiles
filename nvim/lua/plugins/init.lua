return {
  -- Your color scheme
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    opts = {
      transparent_background = true,
    },
  },

  -- Telescope and its dependencies
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.8",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "BurntSushi/ripgrep",
      "nvim-telescope/telescope-ui-select.nvim",
    },
  },

  -- Optional: File browser extension for Telescope
  { "nvim-telescope/telescope-file-browser.nvim" },

  -- Treesitter
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      require("config.treesitter")
    end,
  },

  -- Neo-tree
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
    },
    config = function()
      require("config.neotree")
    end,
  },

  -- Lualine
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("config.lualine")
    end,
  },

  -- Mason (LSP package manager)
  {
    "williamboman/mason.nvim",
    config = function()
      require("config.mason")
    end,
  },

  -- Mason LSP Config (automatically setup LSP servers)
  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = { "williamboman/mason.nvim" },
    config = function()
      require("config.mason-lspconfig")
    end,
  },

  -- LSP Setup (using Neovim's built-in LSP)
  {
    "neovim/nvim-lspconfig",
    config = function()
        require("config.lsp")
    end,
  },

  -- nvim-cmp (autocompletion) - REQUIRED for new LSP setup
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "hrsh7th/cmp-cmdline",
      "L3MON4D3/LuaSnip",
      "saadparwaiz1/cmp_luasnip",
    },
    config = function()
      require("config.cmp")
    end,
  },

  -- none ls
  {
    "nvimtools/none-ls.nvim",
    dependencies = { "mason.nvim" },
    config = function()
      require("config.none-ls")
    end,
  },
  {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    config = function()
        require("config.mason-tools")
    end,
  },
}
