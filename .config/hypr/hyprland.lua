-- Hyprland Lua config
-- Requires Hyprland 0.55+
-- Wiki: https://wiki.hypr.land/Configuring/Start/

------------------
---- MONITORS ----
------------------

-- monitor=,preferred,auto,auto
hl.monitor({
    output = "eDP-1",
    mode = "1920x1200@60.003",
    position = "0x0",
    scale = 1.5,
})


---------------------
---- MY PROGRAMS ----
---------------------

local terminal    = "kitty"
local fileManager = "thunar"
local menu        = "rofi -show drun"
local browser     = "librewolf"
local lock        = "hyprlock"


-------------------
---- AUTOSTART ----
-------------------

hl.on("hyprland.start", function()
    hl.exec_cmd("/usr/local/bin/waybar")
    hl.exec_cmd("hyprpaper")
    -- hl.exec_cmd("blueman-applet")
    hl.exec_cmd("hypridle")
    hl.exec_cmd("syncthing")
    hl.exec_cmd("mako")
end)


-------------------------------
---- ENVIRONMENT VARIABLES ----
-------------------------------

hl.env("XCURSOR_SIZE", "24")
-- hl.env("HYPRCURSOR_SIZE", "24")
hl.env("GDK_SCALE", "1.5")


-----------------------
---- LOOK AND FEEL ----
-----------------------

hl.config({
    general = {
        gaps_in = 2,
        gaps_out = 4,

        border_size = 2,

        col = {
            active_border = "rgb(3e8fb0)",
            inactive_border = "rgb(393552)",
        },

        resize_on_border = false,

        allow_tearing = false,

        layout = "dwindle",
    },

    decoration = {
        rounding = 4,
        rounding_power = 2,

        active_opacity = 1.0,
        inactive_opacity = 1.0,

        shadow = {
            enabled = true,
            range = 4,
            render_power = 3,
            color = 0xee1a1a1a,
        },

        blur = {
            enabled = true,
            size = 5,
            passes = 3,
            new_optimizations = true,
            vibrancy = 0.1696,
        },
    },

    animations = {
        enabled = true,
    },

})

-- Curves
hl.curve("easeOutQuint",   { type = "bezier", points = { {0.23, 1},    {0.32, 1} } })
hl.curve("easeInOutCubic", { type = "bezier", points = { {0.65, 0.05}, {0.36, 1} } })
hl.curve("linear",         { type = "bezier", points = { {0, 0},       {1, 1} } })
hl.curve("almostLinear",   { type = "bezier", points = { {0.5, 0.5},   {0.75, 1.0} } })
hl.curve("quick",          { type = "bezier", points = { {0.15, 0},    {0.1, 1} } })

-- New curves
hl.curve("overshoot",      { type = "bezier", points = { {0.05, 0.9},  {0.1, 1.1} } })   -- slight bounce
hl.curve("smoothOut",      { type = "bezier", points = { {0.36, 0},    {0.66, -0.56} } }) -- anticipation on close
hl.curve("snappy",         { type = "bezier", points = { {0.4, 0},     {0.2, 1} } })
hl.curve("silky",          { type = "bezier", points = { {0.16, 1},    {0.3, 1} } })

-- Animations
hl.animation({ leaf = "global",        enabled = true, speed = 10,   bezier = "default" })

-- Borders
hl.animation({ leaf = "border",        enabled = true, speed = 6,    bezier = "silky" })
hl.animation({ leaf = "borderangle",   enabled = true, speed = 30,   bezier = "linear", style = "loop" }) -- rotating gradient borders, remove if unused

-- Windows
hl.animation({ leaf = "windows",       enabled = true, speed = 5,    bezier = "silky" })
hl.animation({ leaf = "windowsIn",     enabled = true, speed = 4.5,  bezier = "overshoot", style = "popin 80%" })
hl.animation({ leaf = "windowsOut",    enabled = true, speed = 3,    bezier = "snappy",    style = "popin 85%" })
hl.animation({ leaf = "windowsMove",   enabled = true, speed = 4.5,  bezier = "silky" })

-- Fades
hl.animation({ leaf = "fade",          enabled = true, speed = 3.5,  bezier = "quick" })
hl.animation({ leaf = "fadeIn",        enabled = true, speed = 2.5,  bezier = "almostLinear" })
hl.animation({ leaf = "fadeOut",       enabled = true, speed = 2,    bezier = "almostLinear" })

-- Layers (waybar, rofi, notifications, etc.)
hl.animation({ leaf = "layers",        enabled = true, speed = 4,    bezier = "silky" })
hl.animation({ leaf = "layersIn",      enabled = true, speed = 4,    bezier = "silky",  style = "slide" })
hl.animation({ leaf = "layersOut",     enabled = true, speed = 2.5,  bezier = "snappy", style = "fade" })
hl.animation({ leaf = "fadeLayersIn",  enabled = true, speed = 2,    bezier = "almostLinear" })
hl.animation({ leaf = "fadeLayersOut", enabled = true, speed = 1.8,  bezier = "almostLinear" })

-- Workspaces
hl.animation({ leaf = "workspaces",    enabled = true, speed = 5,    bezier = "silky", style = "slide" })
hl.animation({ leaf = "workspacesIn",  enabled = true, speed = 5,    bezier = "silky", style = "slide" })
hl.animation({ leaf = "workspacesOut", enabled = true, speed = 5,    bezier = "silky", style = "slide" })
hl.animation({ leaf = "specialWorkspace", enabled = true, speed = 4.5, bezier = "silky", style = "slidevert" }) -- scratchpad

-- Layouts
hl.config({
    master = {
        new_status = "master",
    },
})

-- Misc
hl.config({
    misc = {
        force_default_wallpaper = -1,
        disable_hyprland_logo = true,
        disable_splash_rendering = true
    },
})

-- XWayland
hl.config({
    xwayland = {
        force_zero_scaling = true,
    },
})


---------------
---- INPUT ----
---------------

hl.config({
    input = {
        kb_layout = "us",
        kb_variant = "",
        kb_model = "",
        kb_options = "",
        kb_rules = "",

        follow_mouse = 1,

        sensitivity = 0,

        touchpad = {
            natural_scroll = true,
        },
    },
})

-- Per-device config
hl.device({
    name = "epic-mouse-v1",
    sensitivity = -0.5,
})


---------------------
---- KEYBINDINGS ----
---------------------

local mainMod = "SUPER"

hl.bind(mainMod .. " + Return", hl.dsp.exec_cmd(terminal))
hl.bind(mainMod .. " + B", hl.dsp.exec_cmd(browser))
hl.bind(mainMod .. " + SHIFT + L", hl.dsp.exec_cmd(lock))
hl.bind(mainMod .. " + Q", hl.dsp.window.close())
-- hl.bind(mainMod .. " + SHIFT + M", hl.dsp.exit())
hl.bind(mainMod .. " + escape", hl.dsp.exec_cmd("~/.local/bin/powermenu"))
hl.bind(mainMod .. " + E", hl.dsp.exec_cmd(fileManager))
hl.bind(mainMod .. " + SHIFT + space", hl.dsp.window.float({ action = "toggle" }))
hl.bind(mainMod .. " + F", hl.dsp.window.fullscreen())
hl.bind(mainMod .. " + D", hl.dsp.exec_cmd(menu))
hl.bind(mainMod .. " + P", hl.dsp.window.pseudo()) -- dwindle
hl.bind(mainMod .. " + X", hl.dsp.layout("togglesplit")) -- dwindle

hl.bind(mainMod .. " + SHIFT + W", hl.dsp.exec_cmd("pkill hyprpaper && hyprpaper"))

-- Move focus with mainMod + hjkl, and raise the newly focused window
local focusKeys = { h = "left", l = "right", k = "up", j = "down" }
for key, dir in pairs(focusKeys) do
    hl.bind(mainMod .. " + " .. key, function()
        hl.dispatch(hl.dsp.focus({ direction = dir }))
        hl.dispatch(hl.dsp.window.bring_to_top())
    end)
end

-- Switch workspaces with mainMod + [0-9]
-- Move active window to a workspace with mainMod + SHIFT + [0-9]
for i = 1, 10 do
    local key = i % 10 -- 10 maps to key 0
    hl.bind(mainMod .. " + " .. key, hl.dsp.focus({ workspace = i }))
    hl.bind(mainMod .. " + SHIFT + " .. key, hl.dsp.window.move({ workspace = i }))
end
hl.bind(mainMod .. " + Tab", hl.dsp.focus({ workspace = "previous" }))

-- Special workspace (scratchpad)
hl.bind(mainMod .. " + S", hl.dsp.workspace.toggle_special("magic"))
hl.bind(mainMod .. " + SHIFT + S", hl.dsp.window.move({ workspace = "special:magic" }))

-- Scroll through existing workspaces with mainMod + scroll
hl.bind(mainMod .. " + mouse_down", hl.dsp.focus({ workspace = "e+1" }))
hl.bind(mainMod .. " + mouse_up", hl.dsp.focus({ workspace = "e-1" }))

-- Move/resize windows with mainMod + LMB/RMB and dragging
hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(), { mouse = true })
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

-- Volume up (max 150%)
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd(
    [[cur=$(wpctl get-volume @DEFAULT_AUDIO_SINK@ | awk '{print int($2*100)}'); if [ "$cur" -lt 150 ]; then wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%+; else wpctl set-volume @DEFAULT_AUDIO_SINK@ 1.5; fi]]
), { locked = true, repeating = true })

hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"), { locked = true, repeating = true })
hl.bind("XF86AudioMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"), { locked = true, repeating = true })
hl.bind("XF86AudioMicMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"), { locked = true, repeating = true })

-- Brightness
hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd("brightnessctl set 2%+"), { locked = true, repeating = true })
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("brightnessctl set 2%-"), { locked = true, repeating = true })
hl.bind("F6", hl.dsp.exec_cmd("brightnessctl set 2%+"), { locked = true, repeating = true })
hl.bind("F5", hl.dsp.exec_cmd("brightnessctl set 2%-"), { locked = true, repeating = true })

-- Media keys (requires playerctl)
hl.bind("XF86AudioNext", hl.dsp.exec_cmd("playerctl next"), { locked = true })
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPlay", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPrev", hl.dsp.exec_cmd("playerctl previous"), { locked = true })

-- Copilot key
hl.bind("SUPER + SHIFT + XF86Assistant", hl.dsp.exec_cmd("notify-send hello"))


-- Screenshot selected region, notify, and copy to clipboard
hl.bind("Print", hl.dsp.exec_cmd(
    [[
    mkdir -p ~/Pictures/Screenshots
    FILE="$HOME/Pictures/Screenshots/screenshot-$(date +%Y%m%d-%H%M%S).png"
    grim -g "$(slurp)" "$FILE" &&
    wl-copy < "$FILE" &&
    notify-send "Screenshot Saved" "Saved and copied to clipboard"
    ]]
))

-- Screenshot entire screen, notify, and copy to clipboard
hl.bind("SHIFT + Print", hl.dsp.exec_cmd(
    [[
    mkdir -p ~/Pictures/Screenshots
    FILE="$HOME/Pictures/Screenshots/screenshot-$(date +%Y%m%d-%H%M%S).png"
    grim "$FILE" &&
    wl-copy < "$FILE" &&
    notify-send "Screenshot Saved" "Saved and copied to clipboard"
    ]]
))
---------------------
---- WINDOW RULES ---
---------------------
hl.window_rule({
    name = "float-pip",
    match = { title = "^(Picture-in-Picture)$" },
    float = true,
})

hl.window_rule({
    name = "suppress-maximize-events",
    match = { class = ".*" },
    suppress_event = "maximize",
})
