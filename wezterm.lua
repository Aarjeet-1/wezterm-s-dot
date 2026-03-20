local wezterm = require("wezterm")
local config = wezterm.config_builder()

config = {
	automatically_reload_config = true,
	enable_tab_bar = true,
	color_scheme = "tokyonight",
	--window_background_opacity = 0.3,
	window_decorations = "NONE",
	hide_tab_bar_if_only_one_tab = false,
	window_padding = {
		left = 0,
		right = 0,
		top = 0,
		bottom = 0,
	},
	scrollback_lines = 1000,
	--tab bar

	use_fancy_tab_bar = false,
	status_update_interval = 30000,
	tab_max_width = 32,
	--window_frame = {}
     
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
