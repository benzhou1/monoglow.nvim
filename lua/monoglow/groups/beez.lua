local M = {}

function M.get(c, opts)
  return {
    BeezMotionHint = { fg = c.glow, bold = true, italic = true, underline = true },
  }
end

return M
