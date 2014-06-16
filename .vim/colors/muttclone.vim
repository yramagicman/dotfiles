hi      clear
syntax  reset
"hi     clear            Constant
"hi     clear            Number
"hi     clear            Statement
"hi     clear            PreProc
"hi     clear            Type
hi      clear            Special
hi      clear            Identifier
hi      clear            Title
hi      clear            String
hi      clear            Comment
hi      clear            Error
hi      clear            LineNr
hi      clear            NonText
hi      clear            SpecialKey
hi      clear            Directory
""set   background=dark
let     colors_name      =               "muttclone"
"       Set              up              some           simple         non-intrusive  colors_name
hi      Normal           ctermfg=253     ctermbg=234    guifg=#dadada  guibg=#121212
hi      Type             gui=bold        term=bold      cterm=none     ctermfg=253
hi      VertSplit        guifg=#808080   guibg=#080808  gui=bold       ctermfg=244    ctermbg=232    cterm=bold
hi      String           term=underline  cterm=NONE     ctermfg=69l    guifg=#9e9e9e  gui=underline
hi      Comment          term=bold       cterm=NONE     ctermfg=241    guifg=#626262
hi      Error            term=reverse    cterm=NONE     ctermbg=234    guifg=Red
hi      LineNr           term=bold       cterm=NONE     ctermfg=245    guifg=white
hi      NonText          term=bold       cterm=NONE     ctermfg=238    guifg=#303030
hi      SpecialKey       term=bold       cterm=NONE     ctermfg=238    guifg=#303030
hi      Keyword          term=bold       cterm=NONE     ctermfg=238    guifg=#303030
hi      Boolean          ctermfg=135
hi      Search           ctermbg=236     ctermfg=231    guibg=#303030  guifg=#ffffff
hi      CursorLine       ctermbg=235     cterm=none     guibg=#262626
hi      FoldColumn       ctermbg=232     ctermfg=247    guifg=#465457  guibg=#000000
hi      Folded           ctermbg=232     ctermfg=247    guifg=#465457  guibg=#000000
hi      VisualNOS        ctermbg=238     guibg=#403D3D
hi      Visual           ctermbg=240     guibg=#403D3D
hi      WildMenu         guifg=#66D9EF   guibg=#000000  ctermfg=81     ctermbg=16
hi      Pmenu            ctermfg=81      ctermbg=16     guifg=#66D9EF  guibg=#000000
hi      PmenuSel         ctermbg=24      guibg=#333333
hi      PmenuSbar        ctermbg=23      guibg=#333333
hi      Statement        gui=bold        term=bold      cterm=bold     ctermfg=22
hi      Function         gui=none        term=bold      cterm=none     ctermfg=202
hi      Operator         ctermfg=231
hi      Identifier       gui=none        term=bold      cterm=none     ctermfg=22
hi      Keyword          gui=bold        term=bold      cterm=bold     ctermfg=39
hi      MatchParen       term=bold       ctermbg=253    ctermfg=234    guibg=#dadada  guifg=#121212  gui=bold
hi      Cursor           guifg=#ffffff   guibg=#444444  ctermfg=231    ctermbg=238
hi      ColorColumn      ctermbg=232     guibg=#080808
hi      Character        ctermfg=144
hi      Number           ctermfg=135
hi      Conditional      ctermfg=161
hi      Constant         ctermfg=135
hi      def              IndentGuides    guibg=#303030  ctermbg=237
