local M = {}

M.url = "https://github.com/FluxxField/smart-motion.nvim"

function M.get(c, opts)
  return {
    SmartMotionHint = { fg = c.glow, bold = true, italic = true, underline = true },
  }
end

return M
