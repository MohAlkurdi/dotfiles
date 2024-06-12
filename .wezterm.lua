-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- Window config
config.window_padding = {
	left = 0,
	right = 0,
	top = 0,
	bottom = 0,
}

-- Font
config.font_size = 18
-- config.font = wezterm.font("BlexMono Nerd Font") -- 17
-- config.font = wezterm.font("JetBrainsMono Nerd Font") -- 17
-- config.font = wezterm.font("CaskaydiaCove Nerd Font") -- 17
config.font = wezterm.font("ComicShannsMono Nerd Font") -- 18
config.bidi_enabled = true

-- disable bell sound
config.audible_bell = "Disabled"

-- disable the title bar but enable the resizable border
config.window_decorations = "RESIZE"

-- and finally, return the configuration to wezterm
return config
