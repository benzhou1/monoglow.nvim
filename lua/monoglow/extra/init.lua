-- monoglow.nvim
-- Portions of this file include code derived from "tokyonight.nvim" (https://github.com/folke/tokyonight.nvim),
-- which is licensed under the Apache License, Version 2.0. See the NOTICE file for more details.
--
-- Licensed under the Apache License, Version 2.0 (the "License");
-- you may not use this file except in compliance with the License.
-- You may obtain a copy of the License at
--
--     http://www.apache.org/licenses/LICENSE-2.0

local util = require("monoglow.util")

local M = {}

-- map of plugin name to plugin extension
--- @type table<string, {ext:string, url:string, label:string, subdir?: string, sep?:string}>
M.extras = {
  ghostty = { ext = "", url = "https://ghostty.org/docs/features/theme", label = "Ghostty" },
  kitty = { ext = "conf", url = "https://sw.kovidgoyal.net/kitty/conf.html", label = "Kitty" },
  helix = { ext = "toml", url = "https://helix-editor.com/", label = "Helix" },
  vim = { ext = "vim", url = "https://vimhelp.org/", label = "Vim", subdir = "colors", sep = "-" },
}

function M.setup()
  local monoglow = require("monoglow")
  vim.o.background = "dark"

  -- map of style to style name
  local styles = {
    z = "",
    void = " Void",
    lack = " Lack",
  }

  ---@type string[]
  local names = vim.tbl_keys(M.extras)
  table.sort(names)

  -- monoglow.setup({ plugins = { all = true } })
  for _, extra in ipairs(names) do
    local info = M.extras[extra]
    local plugin = require("monoglow.extra." .. extra)
    for style, style_name in pairs(styles) do
      local colors, groups, opts = monoglow.load({ style = style, plugins = { all = true } })
      local fname = extra
        .. (info.subdir and "/" .. info.subdir or "")
        .. "/monoglow"
        .. (info.sep or "_")
        .. style
        .. "."
        .. info.ext
      fname = string.gsub(fname, "%.$", "") -- remove trailing dot when no extension
      colors["_upstream_url"] = "https://github.com/wnkz/monoglow.nvim/raw/main/extras/" .. fname
      colors["_style_name"] = "Mono Glow" .. style_name
      colors["_name"] = "monoglow_" .. style
      colors["_style"] = style
      print("[write] " .. fname)
      util.write("extras/" .. fname, plugin.generate(colors, groups, opts))
    end
  end
end

return M
