local M = {}

M.url = "https://github.com/pwntester/octo.nvim"

function M.get(c, opts)
  return {
    OctoBubble = { fg = c.fg },
    OctoBubbleGrey = { fg = c.black, bg = c.gray4 },
    OctoBubblePurple = { fg = c.black, bg = c.light_magenta },
    OctoBubbleRed = { fg = c.black, bg = c.glow },
    OctoBubbleBlue = { fg = c.black, bg = c.light_blue },
    OctoBubbleYellow = { fg = c.black, bg = c.light_yellow },
    OctoBubbleGreen = { fg = c.black, bg = c.light_green },
  }
end

return M
