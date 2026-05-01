return function()
    local status, none_ls = pcall(require, "none-ls")
    if not status then
        vim.notify("none-ls not available")
        return
    end

    local builtins = none_ls.builtins

    -- Setup formatters and linters
    none_ls.setup({
        sources = {
            -- Formatters
            builtins.formatting.stylua,      -- Lua
            builtins.formatting.prettierd,   -- JavaScript/TypeScript/HTML/CSS/JSON/Markdown
            builtins.formatting.black,       -- Python
            builtins.formatting.isort,       -- Python import sorting
            builtins.formatting.rustfmt,     -- Rust
            builtins.formatting.clang_format, -- C/C++
            builtins.formatting.shfmt,       -- Shell scripts
            
            -- Linters (optional - remove if causing issues)
            builtins.diagnostics.eslint_d,   -- JavaScript/TypeScript
            builtins.diagnostics.flake8,     -- Python
            builtins.diagnostics.shellcheck, -- Shell scripts
        },
        on_attach = function(client, bufnr)
            -- This ensures none-ls attaches to buffers
            if client.name == "null-ls" or client.name == "none-ls" then
                client.server_capabilities.documentFormattingProvider = true
            end
        end,
    })

    vim.notify("none-ls configured successfully!")
end
