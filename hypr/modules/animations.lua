-----------------------
---- LOOK AND FEEL ----
-----------------------

-- Refer to https://wiki.hypr.land/Configuring/Basics/Variables/
hl.config({
    general = {
        gaps_in  = 5,
        gaps_out = 20,

        border_size = 2,

        col = {
            active_border   = { colors = {"rgba(33ccffee)", "rgba(00ff99ee)"}, angle = 45 },
            inactive_border = "rgba(595959aa)",
        },

        -- Set to true to enable resizing windows by clicking and dragging on borders and gaps
        resize_on_border = false,

        -- Please see https://wiki.hypr.land/Configuring/Advanced-and-Cool/Tearing/ before you turn this on
        allow_tearing = false,

        layout = "dwindle",
    },

    decoration = {
        rounding       = 10,
        rounding_power = 2,

        -- Change transparency of focused and unfocused windows
        active_opacity   = 1.0,
        inactive_opacity = 1.0,

        shadow = {
            enabled      = true,
            range        = 4,
            render_power = 3,
            color        = 0xee1a1a1a,
        },

        blur = {
            enabled   = true,
            size      = 3,
            passes    = 1,
            vibrancy  = 0.1696,
        },
    },

    animations = {
        enabled = true,
    },
})

-- Default curves and animations, see https://wiki.hypr.land/Configuring/Advanced-and-Cool/Animations/
hl.curve("easeOutQuint",   { type = "bezier", points = { {0.23, 1},    {0.32, 1}    } })
hl.curve("easeInOutCubic", { type = "bezier", points = { {0.65, 0.05}, {0.36, 1}    } })
hl.curve("linear",         { type = "bezier", points = { {0, 0},       {1, 1}       } })
hl.curve("almostLinear",   { type = "bezier", points = { {0.5, 0.5},   {0.75, 1}    } })
hl.curve("quick",          { type = "bezier", points = { {0.15, 0},    {0.1, 1}     } })

-- Default springs
hl.curve("easy", { type = "spring", mass = 1, stiffness = 250, dampening = 25 })

hl.animation({ leaf = "global", enabled = true,  speed = 10,   bezier = "default" })
hl.animation({ leaf = "border", enabled = true,  speed = 5.39, bezier = "easeOutQuint" })

-- windows
hl.curve("snapIn", { type = "bezier", points = { {0.25, 1.4}, {0.3, 1.0} } })

hl.animation({ leaf = "windows",       enabled = true,  speed = 4.79, spring = "easy" })
hl.animation({ leaf = "windowsIn",  enabled = true, speed = 3.5, bezier = "snapIn", style = "popin 75%" })
hl.animation({ leaf = "windowsOut", enabled = true, speed = 1.5, bezier = "quick",   style = "popin 95%" })

-- Fade
hl.animation({ leaf = "fade",    enabled = true, speed = 2.5, bezier = "quick" })
hl.animation({ leaf = "fadeIn",  enabled = true, speed = 2.0, bezier = "almostLinear" })
hl.animation({ leaf = "fadeOut", enabled = true, speed = 1.6, bezier = "almostLinear" })

-- Layers
hl.animation({ leaf = "layers",        enabled = true,  speed = 3.81, bezier = "easeOutQuint" })

hl.curve("bouncyLayer", { type = "bezier", points = { {0.175, 0.885}, {0.32, 1.05} } })
hl.animation({ leaf = "layersIn",      enabled = true, speed = 3.5, bezier = "bouncyLayer", style = "slide" })
hl.animation({ leaf = "layersOut",     enabled = true, speed = 2.0, bezier = "easeInOutCubic", style = "fade" })
hl.animation({ leaf = "fadeLayersIn",  enabled = true, speed = 1.5, bezier = "almostLinear" })
hl.animation({ leaf = "fadeLayersOut", enabled = true, speed = 1.2, bezier = "almostLinear" })

-- Workspace
hl.curve("bouncySlide", { type = "bezier", points = { {0.34, 1.56}, {0.64, 1} } })

hl.animation({ leaf = "workspaces",    enabled = true, speed = 4,   bezier = "bouncySlide", style = "slidefade 10%" })
hl.animation({ leaf = "workspacesIn",  enabled = true, speed = 3.5, bezier = "bouncySlide", style = "slidefade 10%" })
hl.animation({ leaf = "workspacesOut", enabled = true, speed = 3,   bezier = "easeInOutCubic", style = "slidefade 10%" })

hl.animation({ leaf = "zoomFactor",    enabled = true,  speed = 7,    bezier = "quick" })

-- Ref https://wiki.hypr.land/Configuring/Basics/Workspace-Rules/
-- "Smart gaps" / "No gaps when only"
-- uncomment all if you wish to use that.
-- hl.workspace_rule({ workspace = "w[tv1]", gaps_out = 0, gaps_in = 0 })
-- hl.workspace_rule({ workspace = "f[1]",   gaps_out = 0, gaps_in = 0 })
-- hl.window_rule({
--     name  = "no-gaps-wtv1",
--     match = { float = false, workspace = "w[tv1]" },
--     border_size = 0,
--     rounding    = 0,
-- })
-- hl.window_rule({
--     name  = "no-gaps-f1",
--     match = { float = false, workspace = "f[1]" },
--     border_size = 0,
--     rounding    = 0,
-- })
