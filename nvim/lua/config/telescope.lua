return function()
    local status, telescope = pcall(require, "telescope")
    if not status then
        return
    end

    local actions = require("telescope.actions")

    telescope.setup({
        defaults = {
            mappings = {
                i = {
                    ["<C-k>"] = actions.move_selection_previous,
                    ["<C-j>"] = actions.move_selection_next,
                    ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
                },
            },
            -- Better UI
            layout_config = {
                horizontal = {
                    preview_width = 0.6,
                },
            },
        },
        extensions = {
            file_browser = {
                theme = "dropdown",
                hijack_netrw = true,
            },
            ["ui-select"] = {
                require("telescope.themes").get_dropdown({
                    -- even more opts
                })
            }
        },
    })

    -- Load extensions safely
    pcall(function()
        telescope.load_extension("file_browser")
        telescope.load_extension("ui-select")  -- Load UI Select
    end)
end
