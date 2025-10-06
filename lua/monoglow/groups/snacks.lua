local M = {}

M.url = "https://github.com/folke/snacks.nvim"

function M.get(c, opts)
  return {
    ["SnacksInputTitle"] = { fg = c.glow },
    ["SnacksInputBorder"] = "Comment",
    ["SnacksInputPrompt"] = "Comment",
    ["SnacksIndent"] = "Conceal",
    ["SnacksIndentScope"] = { fg = c.glow },
    ["MiniIndentscopeSymbol"] = "Comment",
    ["SnacksPickerDir"] = "Comment",
    ["SnacksPickerMatch"] = "Search",
    ["SnacksPickerTitle"] = { fg = c.glow },
    ["SnacksPickerGitStatusDeleted"] = "DiffDelete",
    ["SnacksPickerGitStatusAdded"] = "DiffAdd",
    ["SnacksPickerUndoAdded"] = "DiffAdd",
    ["SnacksPickerUndoRemoved"] = "DiffDelete",
    ["SnacksDebugPrint"] = "Comment",
  }
end

return M
