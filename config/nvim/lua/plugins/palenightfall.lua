local highlight = require('palenightfall.internal').highlight

local c = require('palenightfall').colors

require('palenightfall').setup {
  highlight_overrides = {
    StatuslineAccent = { fg = c.cyan, bg = c.statusline },
    StatuslineBoolean = { fg = c.orange, bg = c.statusline },
    StatuslineError = { fg = c.red, bg = c.statusline },
    StatuslineWarning = { fg = c.orange, bg = c.statusline },
    StatuslineSuccess = { fg = c.green, bg = c.statusline },
    StatuslinePending = { fg = c.yellow, bg = c.statusline },
    StatuslineNormal = { fg = c.cyan, bg = c.statusline },
    StatuslineInsert = { fg = c.green, bg = c.statusline },
    StatuslineReplace = { fg = c.orange, bg = c.statusline },
    StatuslineVisual = { fg = c.purple, bg = c.statusline },
    StatuslineCommand = { fg = c.yellow, bg = c.statusline },

    LspDiagnosticsLineNrError = { fg = c.red, bg = '#312a34', style = 'bold' },
    LspDiagnosticsLineNrWarning = { fg = c.orange, bg = '#312e3a', style = 'bold' },
  },
}
