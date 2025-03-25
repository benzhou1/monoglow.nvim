local util = require("monoglow.util")

local M = {}

---@param style? string
function M.get(style)
  local colors, config = require("monoglow.colors").setup({ style = style })

  local hl = {}

  hl.normal = {
    a = {
      bg = config.transparent and colors.none or util.darken(colors.bg_statusline, 0.2),
      fg = colors.gray8,
    },
    b = {
      bg = config.transparent and colors.none or util.darken(colors.bg_statusline, 0.5),
      fg = colors.gray7,
    },
    c = {
      bg = config.transparent and colors.none or colors.bg_statusline,
      fg = colors.fg_sidebar,
    },
  }

  hl.insert = {
    a = {
      bg = colors.glow,
      fg = colors.black,
    },
    b = {
      bg = config.transparent and colors.none or util.darken(colors.bg_statusline, 0.5),
      fg = colors.gray7,
    },
    c = {
      bg = config.transparent and colors.none or colors.bg_statusline,
      fg = colors.fg_sidebar,
    },
  }

  hl.command = {
    a = {
      bg = colors.light_yellow,
      fg = colors.black,
    },
    b = {
      bg = config.transparent and colors.none or util.darken(colors.bg_statusline, 0.5),
      fg = colors.gray7,
    },
    c = {
      bg = config.transparent and colors.none or colors.bg_statusline,
      fg = colors.fg_sidebar,
    },
  }

  hl.visual = {
    a = {
      bg = colors.blue2,
      fg = colors.black,
    },
    b = {
      bg = config.transparent and colors.none or util.darken(colors.bg_statusline, 0.5),
      fg = colors.gray7,
    },
    c = {
      bg = config.transparent and colors.none or colors.bg_statusline,
      fg = colors.fg_sidebar,
    },
  }

  hl.replace = hl.visual

  hl.inactive = {
    a = {
      bg = config.transparent and colors.none or colors.bg,
      fg = colors.black,
    },
    b = {
      bg = config.transparent and colors.none or colors.bg,
      fg = colors.gray7,
    },
    c = {
      bg = config.transparent and colors.none or colors.bg,
      fg = colors.fg_sidebar,
    },
  }

  if config.lualine_bold then
    for _, mode in pairs(hl) do
      mode.a.gui = "bold"
    end
  end

  return hl
end

return M
