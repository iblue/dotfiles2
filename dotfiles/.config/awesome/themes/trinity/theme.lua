-- trinity, awesome3 theme

local awful = require("awful")
awful.util = require("awful.util")

theme = {}

theme.font          = "terminus 11"

theme.wallpaper_cmd = "xsetroot -solid '#000000'"

theme.bg_normal     = "#000000"
theme.bg_focus      = "#223322"
theme.bg_urgent     = "#ff0000"

theme.fg_normal     = "#55af66"
theme.fg_focus      = "#55af66"
theme.fg_urgent     = "#55af66"

theme.border_width  = 1
theme.border_normal = "#55af66"
theme.border_focus  = "#55af66"
theme.border_marked = "#55af66"

theme.taglist_squares = true

theme.titlebar_close_button = true

return theme

