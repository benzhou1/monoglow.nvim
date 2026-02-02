local M = {}

M.url = "https://github.com/stevearc/aerial.nvim"

function M.get(c, opts)
  return {
    AerialLine = { fg = c.glow },
  }
end

return M
