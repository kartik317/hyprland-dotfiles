return function()
    local status, mason_tool_installer = pcall(require, "mason-tool-installer")
    if not status then
        vim.notify("mason-tool-installer not available")
        return
    end

    mason_tool_installer.setup({
        ensure_installed = {
            -- Formatters
            "stylua",        -- Lua
            "prettierd",     -- JavaScript/TypeScript/HTML/CSS/JSON/Markdown
            "black",         -- Python
            "isort",         -- Python import sorting
            "rustfmt",       -- Rust
            "clang-format",  -- C/C++
            "shfmt",         -- Shell scripts
            
            -- Linters (optional)
            "eslint_d",
            "flake8", 
            "shellcheck",
        },
        auto_update = true,
        run_on_start = true,  -- Ensure tools are installed when Mason starts
    })
end
