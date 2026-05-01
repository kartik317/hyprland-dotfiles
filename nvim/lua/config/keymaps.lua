return function()
    -- Telescope keymaps
    local status, builtin = pcall(require, "telescope.builtin")
    if status then
        vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Find files" })
        vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Live grep" })
        vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Find buffers" })
        vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Help tags" })
        vim.keymap.set("n", "<leader>fr", builtin.oldfiles, { desc = "Recent files" })
        vim.keymap.set("n", "<leader>fe", function()
            require("telescope").extensions.file_browser.file_browser()
        end, { desc = "File browser" })
    end

    -- Neo-tree keymaps
    vim.keymap.set("n", "<leader>e", ":Neotree filesystem reveal left<CR>", { desc = "Explorer NeoTree (left)" })
    vim.keymap.set("n", "<leader>E", ":Neotree filesystem reveal float<CR>", { desc = "Explorer NeoTree (float)" })

    -- UI Select keymaps (for LSP code actions, etc.)
    vim.keymap.set("n", "<leader>ca", function()
        vim.lsp.buf.code_action()
    end, { desc = "Code actions" })

    -- None ls
    vim.keymap.set("n", "<leader>cf", function()
        vim.lsp.buf.format({ 
            async = true,
            filter = function(client)
                -- Try none-ls first, then fall back to any LSP that can format
                return client.name == "null-ls" or client.name == "none-ls" or client.server_capabilities.documentFormattingProvider
            end
        })
    end, { desc = "Format buffer" })

    -- Range formatting (visual mode)
    vim.keymap.set("v", "<leader>cf", function()
        vim.lsp.buf.format({
            async = true,
            range = {
                ["start"] = vim.api.nvim_buf_get_mark(0, "<"),
                ["end"] = vim.api.nvim_buf_get_mark(0, ">"),
            },
            filter = function(client)
                return client.name == "null-ls" or client.name == "none-ls" or client.server_capabilities.documentFormattingProvider
            end
        })
    end, { desc = "Format selection" })

    vim.notify("Keymaps loaded successfully!")
end
