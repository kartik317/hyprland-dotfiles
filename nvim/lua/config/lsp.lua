return function()
    -- Set up keymaps and capabilities
    local capabilities = require('cmp_nvim_lsp').default_capabilities()

    -- Generic on_attach function
    local on_attach = function(client, bufnr)
        -- Enable completion triggered by <c-x><c-o>
        vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

        -- Mappings.
        local opts = { noremap = true, silent = true, buffer = bufnr }

        vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
        vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
        vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
        vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
        vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)
        vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, opts)
        vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, opts)
        vim.keymap.set('n', '<space>wl', function()
            print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
        end, opts)
        vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, opts)
        vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, opts)
        vim.keymap.set('n', '<space>ca', vim.lsp.buf.code_action, opts)
        vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
        -- Formatting that works with none-ls
        vim.keymap.set('n', '<space>f', function()
            vim.lsp.buf.format({
                async = true,
                filter = function(client)
                    -- Allow both none-ls and regular LSP servers to format
                    return client.name == "null-ls" or client.name == "none-ls" or client.server_capabilities.documentFormattingProvider
                end
            })
        end, opts)
    end
    -- Set up LSP servers manually using the new vim.lsp way
    -- Lua
    require('vim.lsp').start({
        name = 'lua_ls',
        cmd = { 'lua-language-server' },
        root_dir = vim.fs.dirname(vim.fs.find({ '.git' }, { upward = true })[1]),
        capabilities = capabilities,
        on_attach = on_attach,
        settings = {
            Lua = {
                runtime = {
                    version = 'LuaJIT',
                },
                diagnostics = {
                    globals = { 'vim' },
                },
                workspace = {
                    library = vim.api.nvim_get_runtime_file("", true),
                },
                telemetry = {
                    enable = false,
                },
            },
        },
    })

    -- You can add more servers here as needed
    -- For now, let mason-lspconfig handle the rest automatically
end
