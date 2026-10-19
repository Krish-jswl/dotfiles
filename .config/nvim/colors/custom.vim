" ~/.config/nvim/colors/custom.vim
" Palette borrowed from cosec-twilight.nvim, extended for modern Neovim.

set background=dark
highlight clear
if exists('syntax_on')
  syntax reset
endif
set termguicolors

let g:colors_name = 'custom'

" ─── Palette (reference) ────────────────────────────────────────────
" bg        #202020   bg_alt    #262626   bg_sel   #454545   bg_pop  #303030
" fg        #FEFEFE   fg_dim    #cccccc   gray     #8B9698   gutter  #676767
" comment   #6f7b68   string    #A2A970   type     #E3D896   oper    #DEBF7C
" func      #AA9AAC   dir       #C1C88D   red      #C34143   cream   #FFFEDB

" ─── Editor UI ──────────────────────────────────────────────────────
highlight Normal        guifg=#FEFEFE guibg=#202020
highlight NormalFloat   guifg=#FEFEFE guibg=#262626
highlight NormalNC      guifg=#FEFEFE guibg=#202020
highlight FloatBorder   guifg=#676767 guibg=#262626
highlight FloatTitle    guifg=#FFFEDB guibg=#262626 gui=bold
highlight Cursor        guifg=#202020 guibg=#FEFEFE
highlight CursorLine    guibg=#262626
highlight CursorColumn  guibg=#262626
highlight ColorColumn   guibg=#262626
highlight Conceal       guifg=#676767 guibg=#262626
highlight EndOfBuffer   guifg=#202020
highlight NonText       guifg=#303030
highlight Whitespace    guifg=#303030
highlight SpecialKey    guifg=#676767
highlight SignColumn    guibg=#202020
highlight FoldColumn    guifg=#676767 guibg=#202020
highlight Folded        guifg=#8B9698 guibg=#262626
highlight Visual        guibg=#454545
highlight VisualNOS     guibg=#454545
highlight Search        guifg=#FEFEFE guibg=#5F5958
highlight CurSearch     guifg=#202020 guibg=#DEBF7C
highlight IncSearch     guifg=#202020 guibg=#DEBF7C
highlight Substitute    guifg=#1A1A1A guibg=#C1C88D
highlight MatchParen    guifg=#FFFEDB gui=bold,underline
highlight Directory     guifg=#C1C88D
highlight Title         guifg=#FFFEDB gui=bold
highlight Question      guifg=#9b8d7f
highlight ErrorMsg      guifg=#C34143 gui=bold
highlight WarningMsg    guifg=#DEBF7C
highlight ModeMsg       guifg=#FFFEDB gui=bold
highlight MoreMsg       guifg=#A2A970
highlight WildMenu      guifg=#FFFEDB guibg=#454545

" Line numbers: dim by default, bright on the current line
highlight LineNr        guifg=#676767 guibg=#202020
highlight LineNrAbove   guifg=#676767 guibg=#202020
highlight LineNrBelow   guifg=#676767 guibg=#202020
highlight CursorLineNr  guifg=#E3D896 guibg=#262626 gui=bold

" Windows / lines
highlight WinSeparator  guifg=#303030 guibg=#202020
highlight VertSplit     guifg=#303030 guibg=#202020
highlight StatusLine    guifg=#FFFEDB guibg=#34383C
highlight StatusLineNC  guifg=#918988 guibg=#262626
highlight WinBar        guifg=#cccccc guibg=#202020 gui=bold
highlight WinBarNC      guifg=#676767 guibg=#202020
highlight TabLine       guifg=#A09998 guibg=#212121
highlight TabLineFill   guifg=#A09998 guibg=#212121
highlight TabLineSel    guifg=#FFFEDB guibg=#40474F

" Popup menu
highlight Pmenu         guifg=#918988 guibg=#303030
highlight PmenuSel      guifg=#FFFEDB guibg=#454545
highlight PmenuSbar     guibg=#262626
highlight PmenuThumb    guibg=#676767
highlight QuickFixLine  guibg=#303030

" ─── Diff ───────────────────────────────────────────────────────────
highlight DiffAdd       guifg=#FFFEDB guibg=#2B3328
highlight DiffChange    guifg=#FFFEDB guibg=#262636
highlight DiffDelete    guifg=#C34143 guibg=#42242B
highlight DiffText      guifg=#FFFEDB guibg=#49443C
highlight Added         guifg=#A2A970
highlight Changed       guifg=#DEBF7C
highlight Removed       guifg=#C34143

" ─── Classic syntax ─────────────────────────────────────────────────
highlight Comment       guifg=#6f7b68 gui=italic
highlight Constant      guifg=#cccccc
highlight String        guifg=#A2A970
highlight Character     guifg=#A2A970
highlight SpecialChar   guifg=#C1C88D
" Numbers/booleans were the same as comments; nudged so they stand out.
" Set back to #6f7b68 if the muted look was intentional.
highlight Number        guifg=#9b8d7f
highlight Float         guifg=#9b8d7f
highlight Boolean       guifg=#9b8d7f
highlight Identifier    guifg=#8B9698
highlight Function      guifg=#AA9AAC
highlight Statement     guifg=#cccccc
highlight Operator      guifg=#DEBF7C
highlight PreProc       guifg=#8B9698
highlight Type          guifg=#E3D896
highlight Structure     guifg=#AA9AAC
highlight Special       guifg=#cccccc
highlight Delimiter     guifg=#918988
highlight Todo          guifg=#202020 guibg=#DEBF7C gui=bold
highlight Error         guifg=#C34143 gui=undercurl guisp=#C34143
highlight Underlined    gui=underline

" ─── Treesitter ─────────────────────────────────────────────────────
highlight! link @comment            Comment
highlight! link @variable           Identifier
highlight! link @variable.builtin   Special
highlight! link @variable.parameter Identifier
highlight! link @property           Identifier
highlight! link @constant           Constant
highlight! link @constant.builtin   Special
highlight! link @string             String
highlight! link @string.escape      SpecialChar
highlight! link @number             Number
highlight! link @boolean            Boolean
highlight! link @function           Function
highlight! link @function.builtin   Function
highlight! link @function.call      Function
highlight! link @constructor        Type
highlight! link @type               Type
highlight! link @type.builtin       Type
highlight! link @keyword            Statement
highlight! link @operator           Operator
highlight! link @punctuation        Delimiter
highlight! link @tag                Function
highlight! link @tag.attribute      Identifier
highlight! link @tag.delimiter      Delimiter
highlight @markup.heading           guifg=#FFFEDB gui=bold
highlight @markup.strong            gui=bold
highlight @markup.italic            gui=italic
highlight @markup.link.label        guifg=#C1C88D
highlight @markup.link.url          guifg=#8B9698 gui=underline
highlight @markup.raw               guifg=#A2A970
highlight @markup.link.label.markdown_inline cterm=NONE gui=NONE

" ─── LSP / Diagnostics ──────────────────────────────────────────────
highlight DiagnosticError  guifg=#C34143
highlight DiagnosticWarn   guifg=#DEBF7C
highlight DiagnosticInfo   guifg=#8B9698
highlight DiagnosticHint   guifg=#A2A970
highlight DiagnosticOk     guifg=#A2A970
highlight DiagnosticUnderlineError guisp=#C34143 gui=undercurl
highlight DiagnosticUnderlineWarn  guisp=#DEBF7C gui=undercurl
highlight DiagnosticUnderlineInfo  guisp=#8B9698 gui=undercurl
highlight DiagnosticUnderlineHint  guisp=#A2A970 gui=undercurl
highlight LspReferenceText  guibg=#303030
highlight LspReferenceRead  guibg=#303030
highlight LspReferenceWrite guibg=#303030
highlight LspInlayHint      guifg=#676767 guibg=#262626 gui=italic

" ─── Spell ──────────────────────────────────────────────────────────
highlight SpellBad   guisp=#C34143 gui=undercurl
highlight SpellCap   guisp=#DEBF7C gui=undercurl
highlight SpellRare  guisp=#AA9AAC gui=undercurl
highlight SpellLocal guisp=#8B9698 gui=undercurl

" ─── Plugins (harmless if not installed) ────────────────────────────
" gitsigns
highlight GitSignsAdd    guifg=#A2A970
highlight GitSignsChange guifg=#DEBF7C
highlight GitSignsDelete guifg=#C34143
" telescope
highlight TelescopeNormal       guibg=#262626
highlight TelescopeBorder       guifg=#303030 guibg=#262626
highlight TelescopeSelection    guifg=#FFFEDB guibg=#303030
highlight TelescopeMatching     guifg=#DEBF7C gui=bold
highlight TelescopePromptPrefix guifg=#E3D896
" nvim-cmp
highlight CmpItemAbbrMatch      guifg=#DEBF7C gui=bold
highlight CmpItemAbbrMatchFuzzy guifg=#DEBF7C gui=bold
highlight CmpItemKind           guifg=#AA9AAC
" indent-blankline
highlight IblIndent guifg=#303030
highlight IblScope  guifg=#676767

" ─── Terminal colors (:terminal) ────────────────────────────────────
let g:terminal_color_0  = '#262626'
let g:terminal_color_1  = '#C34143'
let g:terminal_color_2  = '#A2A970'
let g:terminal_color_3  = '#DEBF7C'
let g:terminal_color_4  = '#8B9698'
let g:terminal_color_5  = '#AA9AAC'
let g:terminal_color_6  = '#C1C88D'
let g:terminal_color_7  = '#cccccc'
let g:terminal_color_8  = '#454545'
let g:terminal_color_9  = '#D45C5E'
let g:terminal_color_10 = '#B5BC85'
let g:terminal_color_11 = '#E3D896'
let g:terminal_color_12 = '#A3AFB1'
let g:terminal_color_13 = '#BDAFBF'
let g:terminal_color_14 = '#D3D9A7'
let g:terminal_color_15 = '#FEFEFE'

" ─── Transparency ───────────────────────────────────────────────────
" On by default. Put `let g:custom_transparent = 0` before
" `colorscheme custom` to get the solid background back.
if get(g:, 'custom_transparent', 1)
  for grp in ['Normal', 'NormalNC', 'NormalFloat', 'FloatBorder', 'FloatTitle',
        \ 'SignColumn', 'FoldColumn', 'LineNr', 'LineNrAbove', 'LineNrBelow',
        \ 'CursorLineNr', 'EndOfBuffer', 'WinSeparator', 'VertSplit',
        \ 'WinBar', 'WinBarNC', 'TabLineFill', 'StatusLineNC',
        \ 'TelescopeNormal', 'TelescopeBorder',
        \ 'NvimTreeNormal', 'NvimTreeNormalNC', 'NvimTreeEndOfBuffer',
        \ 'NeoTreeNormal', 'NeoTreeNormalNC', 'NeoTreeEndOfBuffer']
    execute 'highlight ' . grp . ' guibg=NONE ctermbg=NONE'
  endfor
endif
