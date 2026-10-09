local wezterm = require("wezterm")
local config = wezterm.config_builder()
--
--config.font = wezterm.font("Mononoki")


config = {

    -- Render with OpenGL than WebGL
    front_end = "WebGpu",
    webgpu_power_preference = "LowPower",
    max_fps = 120,
    window_close_confirmation = "NeverPrompt",

    enable_wayland = false,

    automatically_reload_config = true,
    enable_tab_bar = true,
    color_scheme = "tokyonight",

    --text_background_opacity = 0.3,
    wezterm.font("Mononoki"),



    --window_background_opacity = 0.3,
    window_decorations = "NONE",
    hide_tab_bar_if_only_one_tab = false,


    -- disable updates check during startup
    check_for_updates = false,

    window_padding = {
        left = 0,
        right = 0,
        top = 0,
        bottom = 0,
    },

    scrollback_lines = 500,
    default_cursor_style = "SteadyBlock",
    cursor_blink_rate = 0,



    use_fancy_tab_bar = false,
    status_update_interval = 30000,
    tab_max_width = 32,
    --window_frame = {}

    -- 3. Text Shaping: Disable ligatures to boost output rendering throughput
    harfbuzz_features = { "calt=0", "clig=0", "liga=0" },



    keys = {
        {
            key = 'R',
            mods = 'CTRL|SHIFT',
            action = wezterm.action.PromptInputLine {
                description = 'Enter new name for tab',
                action = wezterm.action_callback(function(window, _, line)
                    if line then
                        window:active_tab():set_title(line)
                    end
                end),
            },
        },
    },
}

return config

--
