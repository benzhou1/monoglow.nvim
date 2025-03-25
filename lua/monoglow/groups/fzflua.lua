local M = {}

M.url = "https://github.com/ibhagwan/fzf-lua"

function M.get(c)
  local ret = {
    ["FzfLuaBorder"] = "Comment",
    ["FzfLuaBufLineNr"] = "Comment",
    ["FzfLuaFzfInfo"] = "Comment",
    ["FzfLuaBackdrop"] = { fg = c.glow },
    ["FzfLuaLiveSym"] = { fg = c.glow },
    ["FzfLuaBufFlagCur"] = { fg = c.glow },
    ["FzfLuaHeaderText"] = { fg = c.glow },
    ["FzfLuaPreviewTitle"] = { fg = c.glow },
    ["FzfLuaBufNr"] = { fg = c.fg },
    ["FzfLuaPathColNr"] = { fg = c.fg },
    ["FzfLuaBufFlagAlt"] = { fg = c.fg },
    ["FzfLuaHeaderBind"] = { fg = c.fg },
    ["FzfLuaPathLineNr"] = { fg = c.fg },
    ["FzfLuaFilePart"] = { fg = c.fg },
    ["FzfLuaTabTitle"] = { fg = c.fg },
    ["FzfLuaTabMarker"] = { fg = c.fg },
  }

  return ret
end

return M
