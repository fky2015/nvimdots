local lualine_theme_style = require('fky.theme').lualine_theme_style

local ops = {
  theme = "auto"
}
if lualine_theme_style then
  ops.theme = lualine_theme_style
end

local gps = require("nvim-gps")
require("lualine").setup({
  extensions = { "nvim-tree", "fugitive", "quickfix" },
  sections = {
    lualine_c = { "filename", { gps.get_location, cond = gps.is_available } },
    lualine_x = {
      {
        require("noice").api.statusline.mode.get,
        cond = require("noice").api.statusline.mode.has,
        color = { fg = "#ff9e64" },
      },
      "encoding",
      "fileformat",
      "filetype",
    },
    lualine_y = { "%3p%%/%L" },
  },
  options = ops,
})
