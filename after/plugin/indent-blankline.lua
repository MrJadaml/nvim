-- Define highlight groups
local highlight = {
  "RainbowRed",
  "RainbowYellow",
  "RainbowBlue",
  "RainbowOrange",
  "RainbowGreen",
  "RainbowViolet",
  "RainbowCyan",
}

-- Require the hooks module from indent-blankline
local hooks = require("ibl.hooks")

-- Register a hook to set up highlight groups
hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
  -- muted colors
  vim.api.nvim_set_hl(0, "RainbowRed", { fg = "#754D4D" })
  vim.api.nvim_set_hl(0, "RainbowYellow", { fg = "#837C54" })
  vim.api.nvim_set_hl(0, "RainbowBlue", { fg = "#4D5C71" })
  vim.api.nvim_set_hl(0, "RainbowOrange", { fg = "#755133" })
  vim.api.nvim_set_hl(0, "RainbowGreen", { fg = "#4E5F44" })
  vim.api.nvim_set_hl(0, "RainbowViolet", { fg = "#5A4C60" })
  vim.api.nvim_set_hl(0, "RainbowCyan", { fg = "#4D5E5F" })

  -- bright colors
  -- vim.api.nvim_set_hl(0, "RainbowRed", { fg = "#E06C75" })
  -- vim.api.nvim_set_hl(0, "RainbowYellow", { fg = "#E5C07B" })
  -- vim.api.nvim_set_hl(0, "RainbowBlue", { fg = "#61AFEF" })
  -- vim.api.nvim_set_hl(0, "RainbowOrange", { fg = "#D19A66" })
  -- vim.api.nvim_set_hl(0, "RainbowGreen", { fg = "#98C379" })
  -- vim.api.nvim_set_hl(0, "RainbowViolet", { fg = "#C678DD" })
  -- vim.api.nvim_set_hl(0, "RainbowCyan", { fg = "#56B6C2" })
end)

-- Setup indent-blankline plugin with custom highlights
require("ibl").setup({
  indent = { highlight = highlight }
})

hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
end)
