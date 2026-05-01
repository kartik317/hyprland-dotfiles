-- Basic settings
vim.opt.number = true          -- Show line numbers
vim.opt.relativenumber = false  -- Show relative line numbers

-- Other useful settings you might want
vim.opt.tabstop = 4           -- Number of spaces tabs count for
vim.opt.shiftwidth = 4        -- Size of an indent
vim.opt.expandtab = true      -- Use spaces instead of tabs
vim.opt.smartindent = true    -- Autoindent new lines

-- Enable mouse support
vim.opt.mouse = "a"

-- Better searching
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Enable 24-bit color
vim.opt.termguicolors = true

vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
