-- theme.lua


-- Define the color palette
local colors = {
    foreground = "#bb35aa",
    background = "#17111B",
    regular0 = "#29222C",
    regular1 = "#F57EA3",
    regular2 = "#81C7A7",
    regular3 = "#E9D2A9",
    regular4 = "#97A4D7",
    regular5 = "#E2B1D8",
    regular6 = "#A7D9E9",
    regular7 = "#FFFFFF",
    bright0 = "#656656",
    bright1 = "#F78FB3",
    bright2 = "#6BB292",
    bright3 = "#E1C89E",
    bright4 = "#7D89C5",
    bright5 = "#D9A5C6",
    bright6 = "#94BDD8",
    bright7 = "#C2B6C6",
}

-- Apply the colors to highlight groups
local function apply_highlights()
    local highlight = vim.api.nvim_set_hl

    -- Basic groups
    highlight(0, "Normal", { fg = colors.foreground, bg = colors.background })
    highlight(0, "CursorLine", { bg = colors.regular0 })
    highlight(0, "Visual", { bg = colors.bright0 })
    highlight(0, "Comment", { fg = colors.bright7, italic = true })
    highlight(0, "String", { fg = colors.regular2 })
    highlight(0, "Keyword", { fg = colors.regular5, bold = true })
    highlight(0, "Function", { fg = colors.regular4 })
    highlight(0, "Identifier", { fg = colors.regular1 })
    highlight(0, "Type", { fg = colors.regular3 })
    highlight(0, "Constant", { fg = colors.regular6 })
    highlight(0, "Error", { fg = colors.bright1, bold = true })

    -- Line number groups
    highlight(0, "LineNr", { fg = colors.bright7 })
    highlight(0, "CursorLineNr", { fg = colors.regular7, bold = true })

    -- Status line
    highlight(0, "StatusLine", { fg = colors.regular7, bg = colors.regular0 })
    highlight(0, "StatusLineNC", { fg = colors.bright7, bg = colors.regular0 })

    -- Pmenu (popup menu)
    highlight(0, "Pmenu", { fg = colors.regular7, bg = colors.regular0 })
    highlight(0, "PmenuSel", { bg = colors.bright0 })
    highlight(0, "PmenuSbar", { bg = colors.bright0 })
    highlight(0, "PmenuThumb", { bg = colors.regular3 })

    -- Search and matches
    highlight(0, "Search", { bg = colors.regular4, fg = colors.background })
    highlight(0, "IncSearch", { bg = colors.regular3, fg = colors.background })

    -- Diagnostics
    highlight(0, "DiagnosticError", { fg = colors.bright1 })
    highlight(0, "DiagnosticWarn", { fg = colors.bright3 })
    highlight(0, "DiagnosticInfo", { fg = colors.bright4 })
    highlight(0, "DiagnosticHint", { fg = colors.bright6 })
end

-- Load the colorscheme
local function load_colorscheme()
    vim.cmd("highlight clear")
    vim.cmd("set termguicolors")
    apply_highlights()
end

-- Execute the colorscheme
load_colorscheme()

return colors

