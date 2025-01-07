
local M = {}

M.base_30 = {
  white = "#FFFFFF",
  darker_black = "#000000",
  black = "#000000", --  nvim bg
  black2 = "#181818",
  one_bg = "#1c1c1c",
  one_bg2 = "#212121",
  one_bg3 = "#292929",
  grey = "#363636",
  grey_fg = "#606060", -- comments
  grey_fg2 = "#4a4a4a",
  light_grey = "#525252",
  red = "#db627e",
  baby_pink = "#a72e5b",
  pink = "#ff75a0",
  line = "#1d1d1d", -- for lines like vertsplit
  green = "#AAD84C",
  vibrant_green = "#b9e75b",
  --nord_blue = "#18a3af",
  nord_blue = "#888318", -- vim mode normal in status bar
  blue = "#25B0BC",
  seablue = "#169AC9",
  yellow = "#fdb830",
  sun = "#ffc038",
  purple = "#da70d6",
 -- dark_purple = "#c65cc2",
  dark_purple = "#c65c00", -- vim mode insert in status bar
  teal = "#749689",
  orange = "#FFA500",
  cyan = "#6BE4E6",
  statusline_bg = "#181818",
  lightbg = "#292929",
  pmenu_bg = "#15bf84",
  folder_bg = "#777777",
}

M.base_16 = {
  base00 = "#000000",
  base01 = "#181818",
  base02 = "#292929",
  base03 = "#363636",
  base04 = "#3f4248",
  --base05 = "#c9c7be", -- symbols like =, and local variables
  base05 = "#988947", -- symbols like =, and local variables
  base06 = "#E6E1CF",
  base07 = "#D9D7CE",
  --base08 = "#988947", -- Confirmed: Variables Confirmed
  base08 = "#99974e", -- Confirmed: Variables Confirmed
  base09 = "#eaa273", -- Confirmed: Integers, Booleans
  base0A = "#9c2623", -- Classes
  base0B = "#64a700", -- Confirmed: Strings
  base0C = "#F09483", -- Escape characters, Regular expressions
  base0D = "#c89500", -- Functions, Methods
  base0E = "#bb4b00", -- Confirmed: Keywords, Storage, Selector, Markup
  base0F = "#d75271", -- Deprecated, Opening/Closing embedded language tags
}

M.polish_hl = {
  syntax = {
    Include = { fg = M.base_16.base0E, bold = true },
  },

  treesitter = {
    ["@property"] = { fg = M.base_16.base0E },
    ["@tag.delimiter"] = { fg = M.base_16.base05 },
    ["@punctuation.bracket"] = { fg = M.base_30.yellow },
    ["@punctuation.delimiter"] = { fg = M.base_30.yellow },
  },
}

M.type = "dark"

M = require("base46").override_theme(M, "oledtheme")

return M
