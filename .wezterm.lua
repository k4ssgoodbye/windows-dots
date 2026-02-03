local wezterm = require("wezterm")
local act = wezterm.action

local config = wezterm.config_builder()

config.front_end = "OpenGL"
config.max_fps = 240
config.default_cursor_style = "SteadyBlock"
config.animation_fps = 1
-- config.cursor_blink_rate = 500
config.term = "xterm-256color"
config.font = wezterm.font("IosevkaTerm NF")
config.font_size = 18
config.cell_width = 0.9
-- config.cell_width = 1
config.window_background_opacity = 0.9
config.prefer_egl = true
config.window_padding = {
  left = 2,
  right = 2,
  top = 3,
  bottom = 0,
}

config.hide_tab_bar_if_only_one_tab = true
config.use_fancy_tab_bar = false

config.keys = {
  {
    key = "h",
    mods = "CTRL|SHIFT|ALT",
    action = wezterm.action.SplitPane({
      direction = "Right",
      size = { Percent = 50 },
    }),
  },
  {
    key = "v",
    mods = "CTRL|SHIFT|ALT",
    action = wezterm.action.SplitPane({
      direction = "Down",
      size = { Percent = 50 },
    }),
  },
  {
    key = "U",
    mods = "CTRL|SHIFT",
    action = act.AdjustPaneSize({ "Left", 5 }),
  },
  {
    key = "I",
    mods = "CTRL|SHIFT",
    action = act.AdjustPaneSize({ "Down", 5 }),
  },
  {
    key = "O",
    mods = "CTRL|SHIFT",
    action = act.AdjustPaneSize({ "Up", 5 }),
  },
  {
    key = "P",
    mods = "CTRL|SHIFT",
    action = act.AdjustPaneSize({ "Right", 5 }),
  },
  { key = "9", mods = "CTRL",     action = act.PaneSelect },
  { key = "L", mods = "CTRL|ALT", action = act.ShowDebugOverlay },
}

config.color_scheme = "Cloud (terminal.sexy)"

config.colors = {
  -- background = '#3b224c',
  -- background = "#181616", -- vague.nvim bg
  -- background = "#080808", -- almost black
  background = "#0c0b0f", -- dark purple
  -- background = "#020202", -- dark purple
  -- background = "#17151c", -- brighter purple
  -- background = "#16141a",
  -- background = "#0e0e12", -- bright washed lavendar
  -- background = 'rgba(59, 34, 76, 100%)',
  cursor_border = "#bea3c7",
  -- cursor_fg = "#281733",
  cursor_bg = "#bea3c7",
  -- selection_fg = '#281733',

  tab_bar = {
    background = "#0c0b0f",
    -- background = "rgba(0, 0, 0, 0%)",
    active_tab = {
      bg_color = "#0c0b0f",
      fg_color = "#bea3c7",
      intensity = "Normal",
      underline = "None",
      italic = false,
      strikethrough = false,
    },
    inactive_tab = {
      bg_color = "#0c0b0f",
      fg_color = "#f8f2f5",
      intensity = "Normal",
      underline = "None",
      italic = false,
      strikethrough = false,
    },

    new_tab = {
      -- bg_color = "rgba(59, 34, 76, 50%)",
      bg_color = "#0c0b0f",
      fg_color = "white",
    },
  },
}


config.window_frame = {
  font = wezterm.font({ family = "IosevkaTerm NF", weight = "Regular" }),
  active_titlebar_bg = "#0c0b0f",
}


config.window_decorations = "NONE | RESIZE"
-- config.default_prog = { "powershell.exe", "-NoLogo" }
config.default_prog = { "pwsh.exe", "-NoLogo" }
config.initial_cols = 80

return config
