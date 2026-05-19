hl.layer_rule({ match = { namespace = "swaync-control-center" }, animation = "slide right" })
hl.layer_rule({ match = { namespace = "swaync-notification-window" }, animation = "slide right" })

hl.layer_rule({ match = { namespace = "swaync-control-center" }, blur = true })
hl.layer_rule({ match = { namespace = "swaync-notification-window" }, blur = true })
hl.layer_rule({ match = { namespace = "swaync-control-center" }, ignore_alpha = 0.0 })
hl.layer_rule({ match = { namespace = "swaync-notification-window" }, ignore_alpha = 0.0 })

hl.layer_rule({ match = { namespace = "rofi" }, animation = "slide" })
hl.layer_rule({ match = { namespace = "wofi" }, animation = "slide" })
hl.layer_rule({ match = { namespace = "logout_dialog" }, animation = "slide" })
