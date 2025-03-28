local util = require("monoglow.util")

local function style(opts)
  local background = vim.o.background
  ---@class Palette
  local ret = {
    gray1 = "#c7c7c7",
    gray2 = "#c7c7c7",
    gray3 = "#c7c7c7",
    gray4 = "#80807F", -- Comments
    gray5 = "#A1938C", -- Documentation
    gray6 = "#c7c7c7",
    gray7 = "#c7c7c7",
    gray8 = "#c7c7c7",
    gray9 = "#c7c7c7",
    gray10 = "#c7c7c7",
    white = "#c7c7c7",
    black = "#222222",

    fg = "#c7c7c7",
    bg = "#333333",
    glow = "#de6e7c",

    blue1 = "#b2d8d8",
    blue2 = "#66b2b2",

    -- NOTE: kept as a tribute to lackluster
    lack = "#708090",
    luster = "#deeeed",

    -- Nvim*
    light_blue = "#a6dbff", -- NvimLightBlue
    light_cyan = "#8cf8f7", -- NvimLightCyan
    light_green = "#b3f6c0", -- NvimLightGreen
    light_magenta = "#ffcaff", -- NvimLightMagenta
    light_red = "#ffc0b9", -- NvimLightRed
    light_yellow = "#fce094", -- NvimLightYellow
  }

  if background == "light" then
    ret.fg = "#222222"
    ret.gray1 = ret.fg
    ret.gray2 = ret.fg
    ret.gray3 = ret.fg
    ret.gray4 = "#6E6763"
    ret.gray5 = "#6E6763"
    ret.gray6 = ret.fg
    ret.gray7 = ret.fg
    ret.gray8 = ret.fg
    ret.gray9 = ret.fg
    ret.gray10 = ret.fg
    ret.white = ret.fg
    ret.bg = "#9b9b9b"
    ret.glow = "#B31D28"
    ret.luster = ret.gray4

    ret.light_red = "#763F34"
    ret.blue2 = "#4A88C7"
    ret.light_cyan = ret.blue2
  end

  ret.special = {
    comment = ret.gray4,
    documentation = ret.gray5,
    exception = ret.fg,
    keyword = ret.fg,
    param = ret.fg,
    property = ret.fg,
    whitespace = ret.fg,
  }
  ret.syntax = {
    boolean = ret.fg,
    var = ret.fg,
    builtin = ret.fg,
    keyword_return = ret.glow,
  }
  ret.git = {
    add = "#baffc9",
    change = "#ffffba",
    delete = "#ffb3ba",
  }
  ret.diff = {
    add = "#2F632F",
    delete = "#763F34",
    change = "#3D4454",
    text = "#465983",
  }
  ret.terminal = {
    black = ret.bg,
    black_bright = ret.fg,
    red = ret.fg,
    red_bright = ret.fg,
    green = ret.glow,
    green_bright = ret.fg,
    yellow = ret.fg,
    yellow_bright = ret.fg,
    blue = ret.bg,
    blue_bright = ret.fg,
    magenta = ret.fg,
    magenta_bright = ret.fg,
    cyan = ret.fg,
    cyan_bright = ret.fg,
    white = ret.fg,
    white_bright = ret.fg,
  }
  ret.fs = {
    dir = ret.glow,
  }
  ret.fg_sidebar = ret.gray4
  ret.lsp_ref = opts.transparent and "none" or ret.bg

  if background == "light" then
    ret.diff = {
      add = ret.git.add,
      delete = ret.git.delete,
      change = ret.light_blue,
      text = util.lighten("#465983", 0.5),
    }
  end

  return ret
end

return style
