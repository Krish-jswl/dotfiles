local wezterm = require("wezterm")

local config = wezterm .config_builder()

config.font = wezterm.font("JetBrainsMono Nerd Font")
config.font_size = 13

config.enable_tab_bar = false

config.color_scheme = 'Gruvbox Material (Gogh)'

config.window_background_opacity = 0.9

return config
