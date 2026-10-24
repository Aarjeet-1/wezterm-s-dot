local wezterm = require("wezterm")
local config = wezterm.config_builder()

-- Render with WebGpu than WebGL
config.front_end = "WebGpu" --"OpenGL"
config.webgpu_power_preference = "HighPerformance"
config.max_fps = 60
config.window_close_confirmation = "NeverPrompt"

config.enable_wayland = true

-- config.automatically_reload_config = true
config.color_scheme = "tokyonight"

config.font = wezterm.font("Mononoki Nerd Font")
config.font_size = 12.0

config.visual_bell = nil


-- config.text_background_opacity = 0.3
-- config.window_background_opacity = 0.3
config.window_decorations = "NONE"
config.hide_tab_bar_if_only_one_tab = false

-- disable updates check during startup
config.check_for_updates = false

config.window_padding = {
    left = 0,
    right = 0,
    top = 0,
    bottom = 0,
}

config.scrollback_lines = 5000
config.default_cursor_style = "SteadyBlock"
config.cursor_blink_rate = 0

config.use_fancy_tab_bar = false
config.status_update_interval = 30000
config.tab_max_width = 32
-- config.window_frame = {}

-- 3. Text Shaping: Disable ligatures to boost output rendering throughput
config.harfbuzz_features = { "calt=0", "clig=0", "liga=0" }

config.keys = {
    {
        key = "R",
        mods = "CTRL|SHIFT",
        action = wezterm.action.PromptInputLine {
            description = "Enter new name for tab",
            action = wezterm.action_callback(function(window, _, line)
                if line then
                    window:active_tab():set_title(line)
                end
            end),
        },
    },
}

return config
