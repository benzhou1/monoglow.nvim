local M = {}

M.url = "https://github.com/cbochs/portal.nvim"

function M.get(c, opts)
  return {
    PortalLabel = { fg = c.black, bg = c.glow },
  }
end

return M
