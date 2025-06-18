local M = {}

M.url = "https://github.com/folke/noice.nvim"

function M.get(c, opts)
  return {
    NoiceCmdlinePopupBorder = { fg = c.gray4 },
    NoiceCmdlinePopupTitle = { fg = c.glow },
    NoiceCmdlinePopupTitleCmdline = "NoiceCmdlinePopupTitle",
    NoiceCmdlinePopupTitleLua = "NoiceCmdlinePopupTitle",
    NoiceCmdlinePopupTitleHelp = "NoiceCmdlinePopupTitle",
    NoiceCmdlinePopupTitleInput = "NoiceCmdlinePopupTitle",
    NoiceCmdlinePopupTitleFilter = "NoiceCmdlinePopupTitle",
    NoiceCmdlinePopupTitleCalculator = "NoiceCmdlinePopupTitle",
    NoiceCmdlinePopupTitleSearch = "NoiceCmdlinePopupTitle",
    EchoNotificationError = { fg = c.glow },

    NoiceCmdlineIcon = { fg = c.glow },
    NoiceCmdlineIconSearch = "NoiceCmdlineIcon",
  }
end

return M
