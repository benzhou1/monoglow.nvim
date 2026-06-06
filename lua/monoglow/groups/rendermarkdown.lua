local M = {}

M.url = "https://github.com/MeanderingProgrammer/render-markdown.nvim"

function M.get(c, opts)
  return {
    RenderMarkdownH1Bg = { bg = "#333333" },
    RenderMarkdownH2Bg = { bg = "#333333" },
    RenderMarkdownH3Bg = { bg = "#333333" },
    RenderMarkdownH4Bg = { bg = "#333333" },
    RenderMarkdownH5Bg = { bg = "#333333" },
    RenderMarkdownH6Bg = { bg = "#333333" },
    RenderMarkdownCode = { bg = "#333333", italic = true },
    RenderMarkdownInlineHighlight = { fg = c.glow },

    -- For md-table.nvim
    MdTableLabel = { fg = c.glow, bold = true },
    MdTableSeparator = { fg = c.gray4, italic = true },
    MdTableHeader = { fg = c.glow },
    MdTableTitle = { fg = c.gray4, italic = true },
  }
end

return M
