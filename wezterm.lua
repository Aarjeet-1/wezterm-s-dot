local wezterm = require("wezterm")
--local act = wezterm.action
local config = wezterm.config_builder()




config ={
  automatically_reload_config = true,
  enable_tab_bar = true,
  color_scheme = "Tokyo Night",
  --window_background_opacity = 0.3
  window_decorations = "RESIZE",
  
  window_padding = {
    left = 3,
    right = 3, 
    top = 0,
    bottom = 0


  },
  scrollback_lines = 3000,


  --tab bar
  use_fancy_tab_bar = false,
  status_update_interval = 1000
  


}

return config


