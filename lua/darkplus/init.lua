local darkplus = {
  black           = "#17191e",
  bg0             = "#282a36",
  bg1             = "#31353f",
  bg2             = "#393f4a",
  bg3             = "#3b3f4c",
  fg              = "#abb2bf",
  purple          = "#c678dd",
  green           = "#98c379",
  orange          = "#d19a66",
  blue            = "#61afef",
  yellow          = "#e5c07b",
  cyan            = "#56b6c2",
  red             = "#e86671",
  grey            = "#5c6370",
  dark_red        = "#993939",
  dark_cyan       = "#2b6f77",
  dark_yellow     = "#93691d",
  dark_blue       = "#1c3448",
  dark_green      = "#31392b",
  dark_purple     = "#8a3fa0",
  none            = "NONE"
}

function darkplus.terminal_color()
  vim.g.terminal_color_0 = darkplus.bg
  vim.g.terminal_color_1 = darkplus.red
  vim.g.terminal_color_2 = darkplus.green
  vim.g.terminal_color_3 = darkplus.yellow
  vim.g.terminal_color_4 = darkplus.blue
  vim.g.terminal_color_5 = darkplus.purple
  vim.g.terminal_color_6 = darkplus.cyan
  vim.g.terminal_color_7 = darkplus.bg1
  vim.g.terminal_color_8 = darkplus.brown
  vim.g.terminal_color_9 = darkplus.red
  vim.g.terminal_color_10 = darkplus.green
  vim.g.terminal_color_11 = darkplus.yellow
  vim.g.terminal_color_12 = darkplus.blue
  vim.g.terminal_color_13 = darkplus.purple
  vim.g.terminal_color_14 = darkplus.cyan
  vim.g.terminal_color_15 = darkplus.fg
end

function darkplus.highlight(group, color)
  local style = color.style and 'gui=' .. color.style or 'gui=NONE'
  local fg = color.fg and 'guifg=' .. color.fg or 'guifg=NONE'
  local bg = color.bg and 'guibg=' .. color.bg or 'guibg=NONE'
  local sp = color.sp and 'guisp=' .. color.sp or ''
  vim.api.nvim_command('highlight ' .. group .. ' ' .. style .. ' ' .. fg ..' ' .. bg..' '..sp)
end

function darkplus.load_syntax()
  local syntax = {
    -- common
    Normal = {fg = darkplus.fg, bg = darkplus.bg0},
    Terminal = {fg = darkplus.fg, bg = darkplus.bg0},
    EndOfBuffer = {fg = darkplus.bg0, bg = darkplus.bg0},
    FoldColumn = {fg = darkplus.fg, bg = darkplus.bg1},
    Folded = {fg = darkplus.fg, bg = darkplus.bg1},
    SignColumn = {fg = darkplus.fg, bg = darkplus.bg0},
    ToolbarLine = {fg = darkplus.fg},
    Cursor = {bg = darkplus.blue},
    vCursor = {reverse = true},
    iCursor = {bg = darkplus.blue},
    lCursor = {reverse = true},
    CursorIM = {reverse = true},
    CursorColumn = {bg = darkplus.bg1},
    CursorLine = {bg = darkplus.bg1},
    ColorColumn = {bg = darkplus.bg1},
    CursorLineNr = {fg = darkplus.fg},
    LineNr = {fg = darkplus.grey},
    Conceal = {fg = darkplus.grey, bg = darkplus.bg1},
    DiffAdd = {fg = darkplus.none, bg = darkplus.dark_green},
    DiffChange = {fg = darkplus.none, bg = darkplus.dark_yellow},
    DiffDelete = {fg = darkplus.none, bg = darkplus.dark_red},
    DiffText = {fg = darkplus.none, bg= darkplus.dark_blue},
    DiffAdded = {fg = darkplus.dark_green},
    DiffRemoved = {fg = darkplus.dark_red},
    DiffFile = {fg = darkplus.dark_cyan},
    DiffIndexLine = {fg = darkplus.grey},
    Directory = {fg = darkplus.blue},
    ErrorMsg = {fg = darkplus.red, bold = true, underline = true},
    WarningMsg = {fg = darkplus.yellow, bold = true},
    MoreMsg = {fg = darkplus.blue, bold = true},
    IncSearch = {fg = darkplus.bg0, bg = darkplus.orange},
    Search = {fg = darkplus.bg0, bg = darkplus.dark_yellow},
    MatchParen = {fg = darkplus.none, bg = darkplus.grey},
    NonText = {fg = darkplus.grey},
    Whitespace = {fg = darkplus.grey},
    SpecialKey = {fg = darkplus.grey},
    Pmenu = {fg = darkplus.fg, bg = darkplus.bg1},
    PmenuSbar = {fg = darkplus.none, bg = darkplus.bg1},
    PmenuSel = {fg = darkplus.bg0, bg = darkplus.dark_red},
    WildMenu = {fg = darkplus.bg0, bg = darkplus.blue},
    PmenuThumb = {fg = darkplus.none, bg = darkplus.grey},
    Question = {fg = darkplus.yellow},
    SpellBad = {fg = darkplus.red, underline = true, sp = darkplus.red},
    SpellCap = {fg = darkplus.yellow, underline = true, sp = darkplus.yellow},
    SpellLocal = {fg = darkplus.blue, underline = true, sp = darkplus.blue},
    SpellRare = {fg = darkplus.purple, underline = true, sp = darkplus.purple},
    StatusLine = {fg = darkplus.fg, bg = darkplus.bg2},
    StatusLineTerm = {fg = darkplus.fg, bg = darkplus.bg2},
    StatusLineNC = {fg = darkplus.grey, bg = darkplus.bg1},
    StatusLineTermNC = {fg = darkplus.grey, bg = darkplus.bg1},
    TabLine = {fg = darkplus.fg, bg = darkplus.bg1},
    TabLineFill = {fg = darkplus.grey, bg = darkplus.bg1},
    TabLineSel =  {fg = darkplus.grey, bg = darkplus.bg1},
    VertSplit = {fg = darkplus.bg1},
    Visual = {bg = darkplus.bg3},
    VisualNOS = {fg = darkplus.none, bg = darkplus.bg2, underline = true},
    QuickFixLine = {fg = darkplus.blue, underline = true},
    Debug = {fg = darkplus.yellow},
    debugPC = {fg = darkplus.bg0, bg = darkplus.green},
    debugBreakpoint = {fg = darkplus.bg0, bg = darkplus.red},
    ToolbarButton = {fg = darkplus.bg0, bg = darkplus.blue},

    -- syntax
    String = {fg = darkplus.green},
    Character = {fg = darkplus.orange},
    Number = {fg = darkplus.orange},
    Float = {fg = darkplus.orange},
    Boolean = {fg = darkplus.orange},
    Type = {fg = darkplus.yellow},
    Structure = {fg = darkplus.yellow},
    StorageClass = {fg = darkplus.yellow},
    Identifier = {fg = darkplus.red},
    Constant = {fg = darkplus.cyan},
    PreProc = {fg = darkplus.purple},
    PreCondit = {fg = darkplus.purple},
    Include = {fg = darkplus.purple},
    Keyword = {fg = darkplus.purple},
    Define = {fg = darkplus.purple},
    Typedef = {fg = darkplus.purple},
    Exception = {fg = darkplus.purple},
    Conditional = {fg = darkplus.purple},
    Repeat = {fg = darkplus.purple},
    Statement = {fg = darkplus.purple},
    Macro = {fg = darkplus.red},
    Error = {fg = darkplus.purple},
    Label = {fg = darkplus.purple},
    Special = {fg = darkplus.red},
    SpecialChar = {fg = darkplus.red},
    Function = {fg = darkplus.blue},
    Operator = {fg = darkplus.red},
    Title = {fg = darkplus.cyan},
    Tag = {fg = darkplus.green},
    Delimiter = {fg = darkplus.fg},
    Comment = {fg = darkplus.grey},
    SpecialComment = {fg = darkplus.red},
    Todo = {fg = darkplus.red},
  }
  return syntax
end

function darkplus.load_plugins()
  local syntax = {
    -- Tree Sitter
    TSAnnotation = {fg = darkplus.fg},
    TSAttribute = {fg = darkplus.cyan},
    TSBoolean = {fg = darkplus.orange},
    TSCharacter = {fg = darkplus.fg},
    TSComment = {fg = darkplus.grey},
    TSConditional = {fg = darkplus.purple},
    TSConstant = {fg = darkplus.orange},
    TSConstBuiltin = {fg = darkplus.orange},
    TSConstMacro = {fg = darkplus.orange},
    TSConstructor = {fg = darkplus.yellow},
    TSError = {fg = darkplus.fg},
    TSException = {fg = darkplus.purple},
    TSField = {fg = darkplus.cyan},
    TSFloat = {fg = darkplus.orange},
    TSFunction = {fg = darkplus.blue},
    TSFuncBuiltin = {fg = darkplus.cyan},
    TSFuncMacro = {fg = darkplus.fg},
    TSInclude = {fg = darkplus.purple},
    TSKeyword = {fg = darkplus.purple},
    TSKeywordFunction = {fg = darkplus.purple},
    TSKeywordOperator = {fg = darkplus.purple},
    TSLabel = {fg = darkplus.red},
    TSMethod = {fg = darkplus.blue},
    TSNamespace = {fg = darkplus.fg},
    TSNone = {fg = darkplus.fg},
    TSNumber = {fg = darkplus.orange},
    TSOperator = {fg = darkplus.yellow},
    TSParameter = {fg = darkplus.red},
    TSParameterReference = {fg = darkplus.fg},
    TSProperty = {fg = darkplus.cyan},
    TSPunctDelimiter = {fg = darkplus.fg},
    TSPunctBracket = {fg = darkplus.yellow},
    TSPunctSpecial = {fg = darkplus.blue},
    TSRepeat = {fg = darkplus.purple},
    TSString = {fg = darkplus.green},
    TSStringRegex = {fg = darkplus.orange},
    TSStringEscape = {fg = darkplus.red},
    TSSymbol = {fg = darkplus.cyan},
    TSTag = {fg = darkplus.red},
    TSTagDelimiter = {fg = darkplus.red},
    TSText = {fg = darkplus.fg},
    TSStrong = {fg = darkplus.fg},
    TSEmphasis = {fg = darkplus.fg},
    TSUnderline = {fg = darkplus.fg},
    TSStrike = {fg = darkplus.fg},
    TSTitle = {fg = darkplus.fg},
    TSLiteral = {fg = darkplus.green},
    TSURI = {fg = darkplus.fg},
    TSMath = {fg = darkplus.purple},
    TSTextReference = {fg = darkplus.fg},
    TSEnviroment = {fg = darkplus.fg},
    TSEnviromentName = {fg = darkplus.fg},
    TSNote = {fg = darkplus.fg},
    TSWarning = {fg = darkplus.orange},
    TSDanger = {fg = darkplus.red},
    TSType = {fg = darkplus.orange},
    TSTypeBuiltin = {fg = darkplus.orange},
    TSVariable = {fg = darkplus.red},
    TSVariableBuiltin = {fg = darkplus.red},

    -- git signs
    GitSignsAdd = {fg = darkplus.green},
    GitSignsAddLn = {fg = darkplus.green},
    GitSignsAddNr = {fg = darkplus.green},
    GitSignsChange = {fg = darkplus.dark_yellow},
    GitSignsChangeLn = {fg = darkplus.dark_yellow},
    GitSignsChangeNr = {fg = darkplus.dark_yellow},
    GitSignsDelete = {fg = darkplus.red},
    GitSignsDeleteLn = {fg = darkplus.red},
    GitSignsDeleteNr = {fg = darkplus.red},

    -- telescope
    TelescopeBorder = {fg = darkplus.dark_red},
    TelescopePromptBorder = {fg = darkplus.dark_red},
    TelescopeResultsBorder = {fg = darkplus.dark_red},
    TelescopePreviewBorder = {fg = darkplus.dark_red},
    TelescopePromptPrefix = {fg = darkplus.blue},
    TelescopeSelectionCaret = {fg = darkplus.blue},

    -- dashboard
    DashboardHeader = {fg = darkplus.green},
    DashboardCenter = {fg = darkplus.blue},
    DashboardShortcut = {fg = darkplus.cyan},
    DashboardFooter = {fg = darkplus.orange},

    -- whichkey
    WhichKey = {fg = darkplus.red},
    WhichKeyDesc = {fg = darkplus.blue},
    WhichKeyGroup = {fg = darkplus.orange},
    WhichKeySeperator = {fg = darkplus.fg},

    -- nvim tree
    NvimTreeFolderName = {fg = darkplus.blue},
    NvimTreeSpecialFile = {fg = darkplus.green, underline=false},

    -- lsp related
    LspDiagnosticsSignError = {fg=darkplus.red};
    LspDiagnosticsSignWarning = {fg=darkplus.yellow};
    LspDiagnosticsSignInformation = {fg=darkplus.blue};
    LspDiagnosticsSignHint = {fg=darkplus.purple};

    LspDiagnosticsVirtualTextError = {fg=darkplus.red};
    LspDiagnosticsVirtualTextWarning= {fg=darkplus.yellow};
    LspDiagnosticsVirtualTextInformation = {fg=darkplus.blue};
    LspDiagnosticsVirtualTextHint = {fg=darkplus.purple};

    LspDiagnosticsUnderlineError = {style="undercurl",sp=darkplus.red};
    LspDiagnosticsUnderlineWarning = {style="undercurl",sp=darkplus.yellow};
    LspDiagnosticsUnderlineInformation = {style="undercurl",sp=darkplus.blue};
    LspDiagnosticsUnderlineHint = {style="undercurl",sp=darkplus.purple};

    -- markdown
    markdownBlockquote = {fg = darkplus.grey},
    markdownBold = {fg = darkplus.none, bold = true},
    markdownBoldDelimiter = {fg = darkplus.red},
    markdownCode = {fg = darkplus.green},
    markdownCodeBlock = {fg = darkplus.green},
    markdownCodeDelimiter = {fg = darkplus.yellow},
    markdownH1 = {fg = darkplus.orange, bold = true},
    markdownH2 = {fg = darkplus.orange, bold = true},
    markdownH3 = {fg = darkplus.orange, bold = true},
    markdownH4 = {fg = darkplus.orange, bold = true},
    markdownH5 = {fg = darkplus.orange, bold = true},
    markdownH6 = {fg = darkplus.orange, bold = true},
    markdownHeadingDelimiter = {fg = darkplus.grey},
    markdownId = {fg = darkplus.yellow},
    markdownIdDeclaration = {fg = darkplus.yellow},
    markdownItalic = {fg = darkplus.none, italic = true},
    markdownItalicDelimiter = {fg = darkplus.red, italic = true},
    markdownLinkDelimiter = {fg = darkplus.yellow},
    markdownLinkText = {fg = darkplus.red},
    markdownLinkTextDelimiter = {fg = darkplus.yellow},
    markdownListMarker = {fg = darkplus.red},
    markdownOrderedListMarker = {fg = darkplus.red},
    markdownRule = {fg = darkplus.purple},
    markdownUrl = {fg = darkplus.blue, underline = true},
    markdownUrlDelimiter = {fg = darkplus.yellow},
    markdownUrlTitleDelimiter = {fg = darkplus.green}
  }
  return syntax
end

local async_load_plugin

-- Loading commons
async_load_plugin = vim.loop.new_async(vim.schedule_wrap(function ()
  darkplus.terminal_color()
  local syntax = darkplus.load_plugins()
  for group,colors in pairs(syntax) do
    darkplus.highlight(group,colors)
  end
  async_load_plugin:close()
end))

-- Loading Plugins
function darkplus.colorscheme()
  vim.api.nvim_command('hi clear')
  if vim.fn.exists('syntax_on') then
    vim.api.nvim_command('syntax reset')
  end
  vim.o.background = 'dark'
  vim.o.termguicolors = true
  vim.g.colors_name = 'darkplus'
  local syntax = darkplus.load_syntax()
  for group,colors in pairs(syntax) do
    darkplus.highlight(group,colors)
  end
  async_load_plugin:send()
end

darkplus.colorscheme()

return darkplus
