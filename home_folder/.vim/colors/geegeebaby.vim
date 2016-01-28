set background=dark
if version > 580
  hi clear
  if exists("syntax_on")
    syntax reset
  endif
endif

set t_Co=256
let g:colors_name = "geegeebaby"

"vim file
hi vimHighlight ctermfg=196 ctermbg=NONE cterm=none
hi vimNotFunc ctermfg=226 ctermbg=NONE cterm=none
hi vimFunc ctermfg=226 ctermbg=NONE cterm=none
hi vimOper ctermfg=215 ctermbg=NONE cterm=none
hi vimOption ctermfg=130 ctermbg=NONE cterm=none
hi vimFTOption ctermfg=130 ctermbg=NONE cterm=none
hi vimVar ctermfg=130 ctermbg=NONE cterm=none
hi vimHiGroup ctermfg=130 ctermbg=NONE cterm=none
hi vimGroup ctermfg=130 ctermbg=NONE cterm=none
hi vimHiCtermFgBg ctermfg=136 ctermbg=NONE cterm=none
hi vimHiCterm ctermfg=136 ctermbg=NONE cterm=none
hi vimIsCommand ctermfg=39 ctermbg=NONE cterm=NONE
hi vimFuncName ctermfg=202 ctermbg=NONE cterm=bold

"indent-guides plugin
hi IndentGuidesOdd ctermbg=233
hi IndentGuidesEven ctermbg=234

"JavaScript
hi jsModules ctermfg=170 ctermbg=NONE cterm=bold
hi jsModuleWords ctermfg=170 ctermbg=NONE cterm=bold
hi jsClass ctermfg=106 ctermbg=NONE cterm=bold
hi jsGlobalObjects ctermfg=106 ctermbg=NONE cterm=none
hi jsSuper ctermfg=106 ctermbg=NONE cterm=none
hi jsThis ctermfg=106 ctermbg=NONE cterm=none
hi jsExportContainer ctermfg=252 ctermbg=NONE cterm=bold
hi jsFunction ctermfg=39 ctermbg=NONE cterm=bold
hi jsArrowFunction ctermfg=39 ctermbg=NONE cterm=bold
hi jsFuncName ctermfg=158 ctermbg=NONE cterm=none
hi jsFuncBlock ctermfg=230 ctermbg=NONE cterm=none
hi jsFuncCall ctermfg=158 ctermbg=NONE cterm=none
hi jsFuncArgs ctermfg=32 ctermbg=NONE cterm=none
hi jsReturn ctermfg=50 ctermbg=NONE cterm=bold
hi jsHtmlElemAttrs ctermfg=227 ctermbg=NONE cterm=none
hi jsHtmlElemFuncs ctermfg=227 ctermbg=NONE cterm=none
hi jsStorageClass ctermfg=39 ctermbg=NONE cterm=none
hi jsPrototype ctermfg=39 ctermbg=NONE cterm=none
hi jsObjectKey ctermfg=37 ctermbg=NONE cterm=none
hi jsFunctionKey ctermfg=37 ctermbg=NONE cterm=bold
hi jsException ctermfg=1 ctermbg=NONE cterm=bold
hi jsNull ctermfg=1 ctermbg=NONE cterm=none
hi jsComment ctermfg=245 ctermbg=NONE cterm=none
hi jsLineComment ctermfg=245 ctermbg=NONE cterm=none
hi jsDocComment ctermfg=245 ctermbg=234 cterm=none
hi jsDocTags ctermfg=245 ctermbg=232 cterm=none
hi jsDocType ctermfg=245 ctermbg=234 cterm=none
hi jsDocParam ctermfg=245 ctermbg=234 cterm=none
hi jsDocTypeNoParam ctermfg=245 ctermbg=234 cterm=none
hi jsOperator ctermfg=215 ctermbg=NONE cterm=bold
hi jsConditional ctermfg=226 ctermbg=NONE cterm=none
hi jsRepeat ctermfg=226 ctermbg=NONE cterm=none

"General
hi Comment ctermfg=245 ctermbg=NONE cterm=none
hi MatchParen ctermfg=238 ctermbg=12 cterm=NONE
hi Statement ctermfg=39 ctermbg=NONE cterm=NONE
hi Folded ctermfg=252 ctermbg=234 cterm=NONE
hi LineNr ctermfg=246 ctermbg=232 cterm=NONE
hi Normal ctermfg=15 ctermbg=none cterm=NONE
hi SignColumn ctermfg=15 ctermbg=none cterm=NONE
hi Operator ctermfg=215 ctermbg=NONE cterm=NONE
hi Todo ctermfg=15 ctermbg=52 cterm=NONE
hi StatusLine ctermfg=250 ctermbg=16 cterm=NONE
hi StatusLineNC ctermfg=250 ctermbg=16 cterm=NONE
hi VertSplit ctermfg=250 ctermbg=16 cterm=NONE
hi Function ctermfg=202 ctermbg=NONE cterm=NONE
hi Repeat ctermfg=226 ctermbg=NONE cterm=none

hi Conditional ctermfg=226 ctermbg=NONE cterm=NONE
hi WildMenu ctermfg=202 ctermbg=16 cterm=NONE
hi PreProc ctermfg=29 ctermbg=NONE cterm=NONE
hi Include ctermfg=29 ctermbg=NONE cterm=NONE
hi Search ctermfg=NONE ctermbg=238 cterm=NONE
hi Highlight ctermfg=196 ctermbg=NONE cterm=none
hi Identifier ctermfg=6 ctermbg=NONE cterm=NONE
hi Title ctermfg=243 ctermbg=NONE cterm=NONE

hi PreCondit ctermfg=66 ctermbg=NONE cterm=NONE
hi NonText ctermfg=104 ctermbg=NONE cterm=NONE
hi Debug ctermfg=11 ctermbg=NONE cterm=NONE
hi Special ctermfg=11 ctermbg=NONE cterm=NONE
hi SpecialChar ctermfg=11 ctermbg=238 cterm=NONE
hi StorageClass ctermfg=196 ctermbg=NONE cterm=NONE
hi Label ctermfg=228 ctermbg=NONE cterm=NONE
hi Delimiter ctermfg=11 ctermbg=NONE cterm=NONE
hi Character ctermfg=222 ctermbg=NONE cterm=NONE
hi Question ctermfg=220 ctermbg=NONE cterm=NONE
hi ModeMsg ctermfg=103 ctermbg=NONE cterm=NONE
hi Define ctermfg=66 ctermbg=NONE cterm=NONE
hi FoldColumn ctermfg=104 ctermbg=236 cterm=NONE
hi Visual ctermfg=255 ctermbg=24 cterm=NONE
hi MoreMsg ctermfg=103 ctermbg=NONE cterm=NONE
hi Exception ctermfg=196 ctermbg=NONE cterm=NONE
hi Keyword ctermfg=196 ctermbg=NONE cterm=NONE

"Fugitive plugin
hi DiffAdd ctermfg=none ctermbg=23 cterm=NONE
hi DiffDelete ctermfg=none ctermbg=124 cterm=NONE
hi DiffChange ctermfg=none ctermbg=17 cterm=NONE
hi DiffText ctermfg=none ctermbg=23 cterm=NONE

hi WarningMsg ctermfg=16 ctermbg=3 cterm=NONE
hi ErrorMsg ctermfg=15 ctermbg=88 cterm=NONE
hi Error ctermfg=15 ctermbg=232 cterm=NONE

hi PMenu ctermfg=255 ctermbg=24 cterm=NONE
hi PMenuThumb ctermfg=255 ctermbg=18 cterm=NONE
hi PMenuSbar ctermfg=255 ctermbg=18 cterm=NONE
hi PMenuSel ctermfg=255 ctermbg=237 cterm=NONE

hi Directory ctermfg=33 ctermbg=NONE cterm=NONE

"Types
hi Number ctermfg=215 ctermbg=NONE cterm=NONE
hi Float ctermfg=215 ctermbg=NONE cterm=NONE
hi Boolean ctermfg=215 ctermbg=NONE cterm=bold
hi Constant ctermfg=215 ctermbg=NONE cterm=NONE
hi String ctermfg=227 ctermbg=none cterm=NONE
hi Type ctermfg=196 ctermbg=NONE cterm=NONE
hi Typedef ctermfg=196 ctermbg=NONE cterm=NONE
