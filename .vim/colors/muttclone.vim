hi      clear
syntax  reset
set     background=dark
let     colors_name      =               "muttclone"
"       Set              up              some           simple         non-intrusive  colors_name
hi      Normal           ctermfg=253     ctermbg=234    guifg=#dadada  guibg=#1c1c1c
hi      Type             gui=bold        term=bold      cterm=none     ctermfg=34     guifg=#00af00
hi      VertSplit        guifg=#808080   guibg=#080808  gui=bold       ctermfg=244    ctermbg=232    cterm=bold
hi      String           term=underline  cterm=NONE     ctermfg=69     guifg=#5f87ff  gui=underline
hi      Comment          term=bold       cterm=NONE     ctermfg=241    guifg=#626262
hi      Error            term=reverse    cterm=bold     ctermfg=202    ctermbg=234    guifg=#ff5f00
hi      LineNr           term=bold       cterm=NONE     ctermfg=245    guifg=#8a8a8a
hi      NonText          term=bold       cterm=NONE     ctermfg=238    guifg=#444444
hi      SpecialKey       term=bold       cterm=NONE     ctermfg=238    guifg=#444444
hi      Keyword          term=bold       cterm=NONE     ctermfg=238    guifg=#444444
hi      Boolean          ctermfg=135     guifg=#af5fff
hi      Search           ctermbg=236     ctermfg=231    guibg=#303030  guifg=#ffffff
hi      CursorLine       ctermbg=235     cterm=none     guibg=#262626
hi      FoldColumn       ctermbg=232     ctermfg=247    guifg=#9e9e9e  guibg=#080808
hi      Folded           ctermbg=232     ctermfg=247    guifg=#9e9e9e  guibg=#080808
hi      VisualNOS        ctermbg=238     guibg=#444444
hi      Visual           ctermbg=240     guibg=#585858
hi      WildMenu         guifg=#5fd7ff   guibg=#000000  ctermfg=81     ctermbg=16
hi      Pmenu            ctermfg=81      ctermbg=16     guifg=#66D9EF  guibg=#000000
hi      PmenuSel         ctermbg=24      guibg=#005f87
hi      PmenuSbar        ctermbg=23      guibg=#005f5f
hi      Statement        gui=bold        term=bold      cterm=bold     ctermfg=34     guifg=#00af00
hi      Function         gui=none        term=bold      cterm=none     ctermfg=202    guifg=#fff00
hi      Operator         ctermfg=231     guifg=#ffffff
hi      Identifier       gui=none        term=bold      cterm=none     ctermfg=34     guifg=#00af00
hi      Keyword          gui=bold        term=bold      cterm=bold     ctermfg=39     guifg=#00afff
hi      MatchParen       term=bold       ctermbg=253    ctermfg=234    guibg=#dadada  guifg=#121212  gui=bold
hi      Cursor           guifg=#ffffff   guibg=#444444  ctermfg=231    ctermbg=238
hi      ColorColumn      ctermbg=232     guibg=#080808
hi      Character        ctermfg=144     guifg=#afaf87
hi      Number           ctermfg=135     guifg=#af5fff
hi      Conditional      ctermfg=161     guifg=#d7005f
hi      Constant         ctermfg=135     guifg=#af5fff
hi      Directory        ctermfg=34      guifg=#00af00
hi      def              IndentGuides    guibg=#303030  ctermbg=237