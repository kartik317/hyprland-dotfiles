--------------------------------
---- WINDOWS AND WORKSPACES ----
--------------------------------

-- See https://wiki.hypr.land/Configuring/Basics/Window-Rules/
-- and https://wiki.hypr.land/Configuring/Basics/Workspace-Rules/

-- Example window rules that are useful

local suppressMaximizeRule = hl.window_rule({
    -- Ignore maximize requests from all apps. You'll probably like this.
    name  = "suppress-maximize-events",
    match = { class = ".*" },

    suppress_event = "maximize",
})
-- suppressMaximizeRule:set_enabled(false)

hl.window_rule({
    name = "pavucontrol_float",
    match = { class = "org.pulseaudio.pavucontrol" },
    opacity = "0.9 0.8",
    float = true,
    size = {800, 600}
})

hl.window_rule({
    name = "bluetooth_float",
    match = { class = "blueman-manager" },
    opacity = "0.9 0.8",
    float = true,
    size = {600, 400}
})

hl.window_rule({
    name = "obsidian_opacity",
    match = { class = "obsidian" },
    opacity = "0.8 0.75"
})

hl.window_rule({
    name = "thunar_opacity",
    match = { class = "thunar" },
    opacity = "0.75 0.7"
})

hl.window_rule({
    name = "copyq_window",
    match = { class = "com.github.hluk.copyq" },
    opacity = "0.8 0.75",
    float = true,
    size = {500, 300}
})

hl.window_rule({
    name = "discord_opacity",
    match = { class = "discord" },
    opacity = "0.8 0.75"
})

hl.window_rule({
    name = "warp_opacity",
    match = { class = "dev.warp.Warp" },
    opacity = "0.75 0.7"
})

hl.window_rule({
    name = "terminal_float",
    match = { class = "kitty" },
    float = true,
    size = {800, 500}

})

hl.window_rule({
    name = "proton_opacity",
    match = { class = "proton.vpn.app.gtk" },
    opacity = "0.8 0.7"
})

hl.window_rule({
    name = "brave_opacity",
    match = { class = "brave-browser" },
    opacity = "0.85 0.8"
})

hl.window_rule({
    name = "telegram_float",
    match = { class = "org.telegram.desktop" },
    float = true,
    size = {800, 500},
    opacity = "0.7 0.6"
})

hl.window_rule({
    name = "vscode_opacity",
    match = { class = "code" },
    opacity = "0.85 0.8"
})

hl.window_rule({
    -- Fix some dragging issues with XWayland
    name  = "fix-xwayland-drags",
    match = {
        class      = "^$",
        title      = "^$",
        xwayland   = true,
        float      = true,
        fullscreen = false,
        pin        = false,
    },

    no_focus = true,
})

-- Layer rules also return a handle.
-- local overlayLayerRule = hl.layer_rule({
--     name  = "no-anim-overlay",
--     match = { namespace = "^my-overlay$" },
--     no_anim = true,
-- })
-- overlayLayerRule:set_enabled(false)

-- Hyprland-run windowrule
hl.window_rule({
    name  = "move-hyprland-run",
    match = { class = "hyprland-run" },

    move  = "20 monitor_h-120",
    float = true,
})
