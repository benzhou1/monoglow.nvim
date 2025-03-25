local M = {}

M.url = "https://github.com/folke/trouble.nvim"

function M.get(c)
  local ret = {
    ["TroubleFzfPos"] = "Comment",
    ["TroubleFzfBasename"] = { fg = c.fg },
    ["TroubleFzfFilename"] = { fg = c.fg },
  }

  return ret
end

return M
