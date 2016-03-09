set background=dark
if version > 580
  hi clear
  if exists("syntax_on")
    syntax reset
  endif
endif

set t_Co=256
let g:colors_name = "gogogadgeto"

"vim file
hi vimHighlight      guifg=#ff0000 guibg=none    gui=none ctermfg=196  ctermbg=none cterm=none
hi vimNotFunc        guifg=#ffaf5f guibg=none    gui=none ctermfg=215  ctermbg=none cterm=none
hi vimFunc           guifg=#ffaf5f guibg=none    gui=none ctermfg=215  ctermbg=none cterm=none
hi vimOper           guifg=#ffaf5f guibg=none    gui=none ctermfg=215  ctermbg=none cterm=none
hi vimOption         guifg=#af5f00 guibg=none    gui=none ctermfg=130  ctermbg=none cterm=none
hi vimFTOption       guifg=#af5f00 guibg=none    gui=none ctermfg=130  ctermbg=none cterm=none
hi vimVar            guifg=#af5f00 guibg=none    gui=none ctermfg=130  ctermbg=none cterm=none
hi vimHiGroup        guifg=#af5f00 guibg=none    gui=none ctermfg=130  ctermbg=none cterm=none
hi vimGroup          guifg=#af5f00 guibg=none    gui=none ctermfg=130  ctermbg=none cterm=none
hi vimHiCtermFgBg    guifg=#af8700 guibg=none    gui=none ctermfg=136  ctermbg=none cterm=none
hi vimHiCterm        guifg=#af8700 guibg=none    gui=none ctermfg=136  ctermbg=none cterm=none
hi vimIsCommand      guifg=#00afff guibg=none    gui=none ctermfg=39   ctermbg=none cterm=none
hi vimFuncName       guifg=#ff5f00 guibg=none    gui=bold ctermfg=202  ctermbg=none cterm=bold

"indent-guides plugin
hi IndentGuidesOdd   guifg=none    guibg=#121212 gui=none ctermfg=none ctermbg=233
hi IndentGuidesEven  guifg=none    guibg=#1c1c1c gui=none ctermfg=none ctermbg=234

"JavaScript
hi jsModules         guifg=#87af00 guibg=none gui=bold ctermfg=106 ctermbg=none cterm=bold
hi jsModuleWords     guifg=#87af00 guibg=none gui=bold ctermfg=106 ctermbg=none cterm=bold
hi jsClass           guifg=#87af00 guibg=none gui=bold ctermfg=106 ctermbg=none cterm=bold
hi jsGlobalObjects   guifg=#87af00 guibg=none gui=none ctermfg=106 ctermbg=none cterm=none
hi jsHtmlElemAttrs   guifg=#87af00 guibg=none gui=none ctermfg=106 ctermbg=none cterm=none
hi jsHtmlElemFuncs   guifg=#87af00 guibg=none gui=none ctermfg=106 ctermbg=none cterm=none
hi jsSuper           guifg=#87af00 guibg=none gui=none ctermfg=106 ctermbg=none cterm=none
hi jsThis            guifg=#87af00 guibg=none gui=none ctermfg=106 ctermbg=none cterm=none
hi jsExportContainer guifg=none guibg=none gui=bold ctermfg=252 ctermbg=none cterm=bold
hi jsFunction        guifg=none guibg=none gui=bold ctermfg=39  ctermbg=none cterm=bold
hi jsArrowFunction   guifg=none guibg=none gui=bold ctermfg=39  ctermbg=none cterm=bold
hi jsFuncName        guifg=none guibg=none gui=none ctermfg=158 ctermbg=none cterm=none
hi jsFuncBlock       guifg=none guibg=none gui=none ctermfg=230 ctermbg=none cterm=none
hi jsFuncCall        guifg=none guibg=none gui=none ctermfg=158 ctermbg=none cterm=none
hi jsFuncArgs        guifg=none guibg=none gui=none ctermfg=39  ctermbg=none cterm=none
hi jsReturn          guifg=none guibg=none gui=bold ctermfg=31  ctermbg=none cterm=bold
hi jsStorageClass    guifg=none guibg=none gui=none ctermfg=39  ctermbg=none cterm=none
hi jsPrototype       guifg=none guibg=none gui=none ctermfg=39  ctermbg=none cterm=none
hi jsObjectKey       guifg=none guibg=none gui=none ctermfg=12  ctermbg=none cterm=none
hi jsFunctionKey     guifg=none guibg=none gui=bold ctermfg=12  ctermbg=none cterm=bold
hi jsException       guifg=none guibg=none gui=bold ctermfg=1   ctermbg=none cterm=bold
hi jsExceptions      guifg=none guibg=none gui=bold ctermfg=1   ctermbg=none cterm=bold
hi jsNull            guifg=none guibg=none gui=none ctermfg=1   ctermbg=none cterm=none
hi jsComment         guifg=#8a8a8a guibg=none gui=none ctermfg=245 ctermbg=none cterm=none
hi jsLineComment     guifg=#8a8a8a guibg=none gui=none ctermfg=245 ctermbg=none cterm=none
hi jsDocComment      guifg=#8a8a8a guibg=#1c1c1c gui=none ctermfg=245 ctermbg=234 cterm=none
hi jsDocTags         guifg=#8a8a8a guibg=#080808 gui=none ctermfg=245 ctermbg=232 cterm=none
hi jsDocType         guifg=#8a8a8a guibg=#1c1c1c gui=none ctermfg=245 ctermbg=234 cterm=none
hi jsDocParam        guifg=#8a8a8a guibg=#1c1c1c gui=none ctermfg=245 ctermbg=234 cterm=none
hi jsDocTypeNoParam  guifg=#8a8a8a guibg=#1c1c1c gui=none ctermfg=245 ctermbg=234 cterm=none
hi jsOperator        guifg=#ffaf5f guibg=none gui=bold ctermfg=215 ctermbg=none cterm=bold
hi jsConditional     guifg=#ffaf5f guibg=none gui=none ctermfg=215 ctermbg=none cterm=none
hi jsRepeat          guifg=#ffaf5f guibg=none gui=none ctermfg=215 ctermbg=none cterm=none

"General
hi Keyword       guibg=none guifg=none gui=none ctermfg=106 ctermbg=none cterm=none
hi Comment       guibg=none guifg=none gui=none ctermfg=245 ctermbg=none cterm=none
hi MatchParen    guibg=none guifg=none gui=none ctermfg=238 ctermbg=12 cterm=none
hi Statement     guibg=none guifg=none gui=none ctermfg=39 ctermbg=none cterm=none
hi Folded        guibg=none guifg=none gui=none ctermfg=252 ctermbg=234 cterm=none
hi LineNr        guibg=none guifg=none gui=none ctermfg=15 ctermbg=0 cterm=none
hi Normal        guibg=none guifg=none gui=none ctermfg=15 ctermbg=none cterm=none
hi SignColumn    guibg=none guifg=none gui=none ctermfg=15 ctermbg=none cterm=none
hi Operator      guibg=none guifg=none gui=none ctermfg=215 ctermbg=none cterm=none
hi Todo          guibg=none guifg=none gui=none ctermfg=15 ctermbg=52 cterm=none
hi StatusLine    guibg=none guifg=none gui=none ctermfg=250 ctermbg=16 cterm=none
hi StatusLineNC  guibg=none guifg=none gui=none ctermfg=250 ctermbg=16 cterm=none
hi VertSplit     guibg=none guifg=none gui=none ctermfg=250 ctermbg=16 cterm=none
hi Function      guibg=none guifg=none gui=none ctermfg=202 ctermbg=none cterm=none
hi Repeat        guibg=none guifg=none gui=none ctermfg=215 ctermbg=none cterm=none

hi Conditional   guibg=none guifg=none gui=none ctermfg=215 ctermbg=none cterm=none
hi WildMenu      guibg=none guifg=none gui=none ctermfg=202 ctermbg=16 cterm=none
hi PreProc       guibg=none guifg=none gui=none ctermfg=29 ctermbg=none cterm=none
hi Include       guibg=none guifg=none gui=none ctermfg=29 ctermbg=none cterm=none
hi Search        guibg=none guifg=none gui=none ctermfg=none ctermbg=238 cterm=none
hi Highlight     guibg=none guifg=none gui=none ctermfg=196 ctermbg=none cterm=none
hi Identifier    guibg=none guifg=none gui=none ctermfg=6 ctermbg=none cterm=none
hi Title         guibg=none guifg=none gui=none ctermfg=243 ctermbg=none cterm=none

hi PreCondit     guibg=none guifg=none gui=none ctermfg=66 ctermbg=none cterm=none
hi NonText       guibg=none guifg=none gui=none ctermfg=104 ctermbg=none cterm=none
hi Debug         guibg=none guifg=none gui=none ctermfg=11 ctermbg=none cterm=none
hi Special       guibg=none guifg=none gui=none ctermfg=11 ctermbg=none cterm=none
hi SpecialChar   guibg=none guifg=none gui=none ctermfg=11 ctermbg=238 cterm=none
hi StorageClass  guibg=none guifg=none gui=none ctermfg=196 ctermbg=none cterm=none
hi Label         guibg=none guifg=none gui=none ctermfg=12 ctermbg=none cterm=none
hi Delimiter     guibg=none guifg=none gui=none ctermfg=11 ctermbg=none cterm=none
hi Character     guibg=none guifg=none gui=none ctermfg=222 ctermbg=none cterm=none
hi Question      guibg=none guifg=none gui=none ctermfg=220 ctermbg=none cterm=none
hi ModeMsg       guibg=none guifg=none gui=none ctermfg=103 ctermbg=none cterm=none
hi Define        guibg=none guifg=none gui=none ctermfg=66 ctermbg=none cterm=none
hi FoldColumn    guibg=none guifg=none gui=none ctermfg=104 ctermbg=236 cterm=none
hi Visual        guibg=none guifg=none gui=none ctermfg=255 ctermbg=24 cterm=none
hi MoreMsg       guibg=none guifg=none gui=none ctermfg=103 ctermbg=none cterm=none
hi Exception     guibg=none guifg=none gui=none ctermfg=196 ctermbg=none cterm=none

"Fugitive plugin
hi DiffAdd       guibg=none guifg=none gui=none ctermfg=none ctermbg=23 cterm=none
hi DiffDelete    guibg=none guifg=none gui=none ctermfg=none ctermbg=124 cterm=none
hi DiffChange    guibg=none guifg=none gui=none ctermfg=none ctermbg=17 cterm=none
hi DiffText      guibg=none guifg=none gui=none ctermfg=none ctermbg=23 cterm=none

hi WarningMsg    guibg=none guifg=none gui=none ctermfg=16 ctermbg=172 cterm=none
hi ErrorMsg      guibg=none guifg=none gui=none ctermfg=15 ctermbg=88 cterm=none
hi Error         guibg=none guifg=none gui=none ctermfg=15 ctermbg=232 cterm=none

hi PMenu         guibg=none guifg=none gui=none ctermfg=255 ctermbg=24 cterm=none
hi PMenuThumb    guibg=none guifg=none gui=none ctermfg=255 ctermbg=18 cterm=none
hi PMenuSbar     guibg=none guifg=none gui=none ctermfg=255 ctermbg=18 cterm=none
hi PMenuSel      guibg=none guifg=none gui=none ctermfg=255 ctermbg=237 cterm=none

hi Directory     guibg=none guifg=none gui=none ctermfg=33 ctermbg=none cterm=none

"Types
hi Number        guibg=none guifg=none gui=none ctermfg=215 ctermbg=none cterm=none
hi Float         guibg=none guifg=none gui=none ctermfg=215 ctermbg=none cterm=none
hi Boolean       guibg=none guifg=none gui=bold ctermfg=215 ctermbg=none cterm=bold
hi Constant      guibg=none guifg=none gui=none ctermfg=215 ctermbg=none cterm=none
hi String        guibg=none guifg=none gui=none ctermfg=172 ctermbg=none cterm=none
hi Type          guibg=none guifg=none gui=none ctermfg=39 ctermbg=none cterm=none
hi Typedef       guibg=none guifg=none gui=none ctermfg=39 ctermbg=none cterm=none
hi Function      guibg=none guifg=none gui=bold ctermfg=39 ctermbg=none cterm=bold
