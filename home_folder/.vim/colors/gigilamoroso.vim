set background=dark
if version > 580
  hi clear
  if exists("syntax_on")
    syntax reset
  endif
endif

set t_Co=256
let g:colors_name = "gogogadgeto"

"General
hi Comment      guibg=none guifg=none gui=none ctermfg=245 ctermbg=none cterm=none
hi Todo         guibg=none guifg=none gui=none ctermfg=28 ctermbg=234 cterm=none
hi Keyword      guibg=none guifg=none gui=none ctermfg=106 ctermbg=none cterm=none
hi MatchParen   guibg=none guifg=none gui=none ctermfg=238 ctermbg=75 cterm=none
hi Statement    guibg=none guifg=none gui=none ctermfg=75 ctermbg=none cterm=none
hi Folded       guibg=none guifg=none gui=none ctermfg=252 ctermbg=234 cterm=none
hi LineNr       guibg=none guifg=none gui=none ctermfg=15 ctermbg=0 cterm=none
hi Normal       guibg=none guifg=none gui=none ctermfg=15 ctermbg=none cterm=none
hi SignColumn   guibg=none guifg=none gui=none ctermfg=15 ctermbg=none cterm=none
hi Operator     guibg=none guifg=none gui=none ctermfg=111 ctermbg=none cterm=none
hi StatusLine   guibg=none guifg=none gui=none ctermfg=250 ctermbg=16 cterm=none
hi StatusLineNC guibg=none guifg=none gui=none ctermfg=250 ctermbg=16 cterm=none
hi VertSplit    guibg=none guifg=none gui=none ctermfg=250 ctermbg=16 cterm=none
hi Function     guibg=none guifg=none gui=none ctermfg=111 ctermbg=none cterm=none
hi Repeat       guibg=none guifg=none gui=none ctermfg=178 ctermbg=none cterm=none
hi Conditional  guibg=none guifg=none gui=none ctermfg=178 ctermbg=none cterm=none
hi WildMenu     guibg=none guifg=none gui=none ctermfg=111 ctermbg=16 cterm=none
hi PreProc      guibg=none guifg=none gui=none ctermfg=106 ctermbg=none cterm=none
hi Include      guibg=none guifg=none gui=none ctermfg=106 ctermbg=none cterm=none
hi Search       guibg=none guifg=none gui=none ctermfg=none ctermbg=238 cterm=none
hi Highlight    guibg=none guifg=none gui=none ctermfg=196 ctermbg=none cterm=none
hi Identifier   guibg=none guifg=none gui=none ctermfg=75 ctermbg=none cterm=none
hi Title        guibg=none guifg=none gui=none ctermfg=106 ctermbg=none cterm=none
hi PreCondit    guibg=none guifg=none gui=none ctermfg=66 ctermbg=none cterm=none
hi NonText      guibg=none guifg=none gui=none ctermfg=238 ctermbg=none cterm=none
hi SpecialKey   guibg=none guifg=none gui=none ctermfg=238 ctermbg=none cterm=none
hi Debug        guibg=none guifg=none gui=none ctermfg=11 ctermbg=none cterm=none
hi Special      guibg=none guifg=none gui=none ctermfg=11 ctermbg=none cterm=none
hi SpecialChar  guibg=none guifg=none gui=none ctermfg=11 ctermbg=238 cterm=none
hi StorageClass guibg=none guifg=none gui=none ctermfg=75 ctermbg=none cterm=none
hi Label        guibg=none guifg=none gui=none ctermfg=75 ctermbg=none cterm=none
hi Delimiter    guibg=none guifg=none gui=none ctermfg=11 ctermbg=none cterm=none
hi Character    guibg=none guifg=none gui=none ctermfg=222 ctermbg=none cterm=none
hi Question     guibg=none guifg=none gui=none ctermfg=220 ctermbg=none cterm=none
hi ModeMsg      guibg=none guifg=none gui=none ctermfg=103 ctermbg=none cterm=none
hi Define       guibg=none guifg=none gui=none ctermfg=66 ctermbg=none cterm=none
hi FoldColumn   guibg=none guifg=none gui=none ctermfg=104 ctermbg=236 cterm=none
hi Visual       guibg=none guifg=none gui=none ctermfg=255 ctermbg=24 cterm=none
hi MoreMsg      guibg=none guifg=none gui=none ctermfg=103 ctermbg=none cterm=none
hi Exception    guibg=none guifg=none gui=none ctermfg=196 ctermbg=none cterm=none

"Types
hi Number   guibg=none guifg=none gui=none ctermfg=111 ctermbg=none cterm=none
hi Float    guibg=none guifg=none gui=none ctermfg=111 ctermbg=none cterm=none
hi Boolean  guibg=none guifg=none gui=bold ctermfg=111 ctermbg=none cterm=bold
hi Constant guibg=none guifg=none gui=none ctermfg=111 ctermbg=none cterm=none
hi Type     guibg=none guifg=none gui=none ctermfg=75  ctermbg=none cterm=none
hi Typedef  guibg=none guifg=none gui=none ctermfg=75  ctermbg=none cterm=none
hi Function guibg=none guifg=none gui=bold ctermfg=75  ctermbg=none cterm=bold
hi String   guibg=none guifg=none gui=none ctermfg=73  ctermbg=234  cterm=none

"indent-guides plugin
hi IndentGuidesOdd  guifg=none    guibg=none gui=none ctermfg=none ctermbg=233
hi IndentGuidesEven guifg=none    guibg=none gui=none ctermfg=none ctermbg=234

"Fugitive plugin
hi DiffAdd    guibg=none guifg=none gui=none ctermfg=none ctermbg=23 cterm=none
hi DiffDelete guibg=none guifg=none gui=none ctermfg=none ctermbg=124 cterm=none
hi DiffChange guibg=none guifg=none gui=none ctermfg=none ctermbg=17 cterm=none
hi DiffText   guibg=none guifg=none gui=none ctermfg=none ctermbg=23 cterm=none

"Syntastic plugin
hi WarningMsg guibg=none guifg=none gui=none ctermfg=16 ctermbg=172 cterm=none
hi ErrorMsg   guibg=none guifg=none gui=none ctermfg=15 ctermbg=88 cterm=none
hi Error      guibg=none guifg=none gui=none ctermfg=15 ctermbg=232 cterm=none

"NerdTree plugin
hi Directory   guibg=none guifg=none gui=none ctermfg=75  ctermbg=none cterm=none
hi NERDTreeUp  guibg=none guifg=none gui=none ctermfg=178 ctermbg=none cterm=none
hi NERDTreeDir guibg=none guifg=none gui=none ctermfg=75  ctermbg=none cterm=none
hi NERDTreeCWD guibg=none guifg=none gui=none ctermfg=106 ctermbg=none cterm=none

"vimscript language
hi vimHighlight   guifg=none guibg=none gui=none ctermfg=196  ctermbg=none cterm=none
hi vimNotFunc     guifg=none guibg=none gui=none ctermfg=75   ctermbg=none cterm=none
hi vimFunc        guifg=none guibg=none gui=none ctermfg=75   ctermbg=none cterm=none
hi vimOper        guifg=none guibg=none gui=none ctermfg=111  ctermbg=none cterm=none
hi vimOption      guifg=none guibg=none gui=none ctermfg=106  ctermbg=none cterm=none
hi vimFTOption    guifg=none guibg=none gui=none ctermfg=106  ctermbg=none cterm=none
hi vimVar         guifg=none guibg=none gui=none ctermfg=111  ctermbg=none cterm=none
hi vimHiGroup     guifg=none guibg=none gui=none ctermfg=106  ctermbg=none cterm=none
hi vimGroup       guifg=none guibg=none gui=none ctermfg=106  ctermbg=none cterm=none
hi vimHiCtermFgBg guifg=none guibg=none gui=none ctermfg=111  ctermbg=none cterm=none
hi vimHiCterm     guifg=none guibg=none gui=none ctermfg=111  ctermbg=none cterm=none
hi vimIsCommand   guifg=none guibg=none gui=none ctermfg=75   ctermbg=none cterm=none
hi vimFuncName    guifg=none guibg=none gui=bold ctermfg=106  ctermbg=none cterm=bold
hi vimMapMod      guifg=none guibg=none gui=bold ctermfg=106  ctermbg=none cterm=bold
hi vimMapModKey   guifg=none guibg=none gui=bold ctermfg=106  ctermbg=none cterm=bold
hi vimNotation    guifg=none guibg=none gui=bold ctermfg=106  ctermbg=none cterm=bold
hi vimBracket     guifg=none guibg=none gui=bold ctermfg=106  ctermbg=none cterm=bold
hi vimMapRhs      guifg=none guibg=none gui=bold ctermfg=none ctermbg=none cterm=bold

"JavaScript language
hi jsModules         guifg=none guibg=none gui=none ctermfg=106  ctermbg=none cterm=none
hi jsModuleWords     guifg=none guibg=none gui=none ctermfg=106  ctermbg=none cterm=none
hi jsImportContainer guifg=none guibg=none gui=none ctermfg=none ctermbg=none cterm=none
hi jsExportContainer guifg=none guibg=none gui=bold ctermfg=none ctermbg=none cterm=bold
hi jsClass           guifg=none guibg=none gui=bold ctermfg=106  ctermbg=none cterm=bold
hi jsPrototype       guifg=none guibg=none gui=none ctermfg=106  ctermbg=none cterm=none
hi jsGlobalObjects   guifg=none guibg=none gui=none ctermfg=251  ctermbg=none cterm=none
hi jsHtmlElemAttrs   guifg=none guibg=none gui=none ctermfg=251  ctermbg=none cterm=none
hi jsHtmlElemFuncs   guifg=none guibg=none gui=none ctermfg=251  ctermbg=none cterm=none
hi jsSuper           guifg=none guibg=none gui=none ctermfg=251  ctermbg=none cterm=none
hi jsThis            guifg=none guibg=none gui=none ctermfg=251  ctermbg=none cterm=none
hi jsFunction        guifg=none guibg=none gui=bold ctermfg=75   ctermbg=none cterm=bold
hi jsArrowFunction   guifg=none guibg=none gui=bold ctermfg=106  ctermbg=none cterm=bold
hi jsFuncName        guifg=none guibg=none gui=none ctermfg=106  ctermbg=none cterm=none
hi jsFunctionKey     guifg=none guibg=none gui=bold ctermfg=106  ctermbg=none cterm=bold
hi jsFuncBlock       guifg=none guibg=none gui=none ctermfg=251  ctermbg=none cterm=none
hi jsFuncCall        guifg=none guibg=none gui=none ctermfg=251  ctermbg=none cterm=none
hi jsFuncArgs        guifg=none guibg=none gui=none ctermfg=75   ctermbg=none cterm=none
hi jsReturn          guifg=none guibg=none gui=bold ctermfg=106  ctermbg=none cterm=none
hi jsStorageClass    guifg=none guibg=none gui=none ctermfg=75   ctermbg=none cterm=none
hi jsObjectKey       guifg=none guibg=none gui=none ctermfg=111  ctermbg=none cterm=none
hi jsException       guifg=none guibg=none gui=bold ctermfg=196  ctermbg=none cterm=bold
hi jsExceptions      guifg=none guibg=none gui=bold ctermfg=196  ctermbg=none cterm=bold
hi jsNull            guifg=none guibg=none gui=none ctermfg=196  ctermbg=none cterm=none
hi jsComment         guifg=none guibg=none gui=none ctermfg=245  ctermbg=none cterm=none
hi jsLineComment     guifg=none guibg=none gui=none ctermfg=245  ctermbg=none cterm=none
hi jsDocComment      guifg=none guibg=none gui=none ctermfg=245  ctermbg=234 cterm=none
hi jsDocTags         guifg=none guibg=none gui=none ctermfg=245  ctermbg=232 cterm=none
hi jsDocType         guifg=none guibg=none gui=none ctermfg=136   ctermbg=234 cterm=none
hi jsDocTypeNoParam  guifg=none guibg=none gui=none ctermfg=136   ctermbg=234 cterm=none
hi jsDocParam        guifg=none guibg=none gui=none ctermfg=245  ctermbg=234 cterm=none
hi jsOperator        guifg=none guibg=none gui=bold ctermfg=111  ctermbg=none cterm=bold
hi jsConditional     guifg=none guibg=none gui=none ctermfg=178  ctermbg=none cterm=none
hi jsRepeat          guifg=none guibg=none gui=none ctermfg=178  ctermbg=none cterm=none

"Go
hi goBuiltins        guifg=none guibg=none gui=none ctermfg=106 ctermbg=none cterm=none
hi goDeclaration     guifg=none guibg=none gui=none ctermfg=106 ctermbg=none cterm=bold
hi goDirective       guifg=none guibg=none gui=none ctermfg=106 ctermbg=none cterm=none
hi goRepeat          guifg=none guibg=none gui=none ctermfg=178 ctermbg=none cterm=none
hi goConditional     guifg=none guibg=none gui=none ctermfg=178 ctermbg=none cterm=none
hi goFormatSpecifier guifg=none guibg=none gui=none ctermfg=44  ctermbg=none cterm=none
hi goEscapeC         guifg=none guibg=none gui=none ctermfg=111 ctermbg=none cterm=none
hi goType            guifg=none guibg=none gui=none ctermfg=75  ctermbg=none cterm=none

