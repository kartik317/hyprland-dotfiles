return function()
    local status, neotree = pcall(require, "neo-tree")
    if not status then
        return
    end

    neotree.setup({
        close_if_last_window = true, -- Close Neo-tree if it's the last window left
        enable_git_status = true,
        enable_diagnostics = true,
        filesystem = {
            filtered_items = {
                visible = true, -- This is what you want: If you set this to `true`, all files are visible by default
                hide_dotfiles = false,
                hide_gitignored = false,
            },
            follow_current_file = {
                enabled = true, -- This will find and focus the file in the active buffer every time
            },
            use_libuv_file_watcher = true,
        },
        window = {
            mappings = {
                ["<space>"] = "none", -- Disable space key in neo-tree
                ["l"] = "open",
                ["h"] = "close_node",
                ["o"] = "open",
            },
        },
    })
end
