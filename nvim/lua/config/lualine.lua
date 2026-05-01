return function()
    local status, lualine = pcall(require, "lualine")
    if not status then
        return
    end

    -- Prefer catppuccin colorscheme for lualine when available
    local theme = "auto"
    local has_catppuccin, catppuccin = pcall(require, "lualine.themes.catppuccin")
    if has_catppuccin then
        theme = catppuccin
    end

    lualine.setup({
        options = {
            theme = theme,
            component_separators = { left = '│', right = '│' },
            section_separators = { left = '', right = '' },
            globalstatus = true,
        },
        sections = {
            lualine_a = { 'mode' },
            lualine_b = { 'branch', 'diff', 'diagnostics' },
            lualine_c = { 'filename' },
            lualine_x = { 'encoding', 'fileformat', 'filetype' },
            lualine_y = { 'progress' },
            lualine_z = { 'location' }
        },
        inactive_sections = {
            lualine_a = {},
            lualine_b = {},
            lualine_c = { 'filename' },
            lualine_x = { 'location' },
            lualine_y = {},
            lualine_z = {}
        },
        tabline = {},
        extensions = { 'neo-tree', 'trouble', 'toggleterm' }
    })
end
