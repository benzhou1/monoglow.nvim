local M = {}

M.url = "https://github.com/FluxxField/smart-motion.nvim"

function M.get(c, opts)
  return {
    SmartMotionHint = { fg = c.black, bg = c.glow },
  }
end

return M
