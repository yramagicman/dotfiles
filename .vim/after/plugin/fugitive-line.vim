
if has('statusline') && exists('*fugitive#statusline')
    set statusline=\|\ %m%f%r\ \%y
    set statusline+=\ \%{fugitive#statusline()}
    set statusline+=%=
    set statusline+=Line:
    set statusline+=%4l/%-4L
    set statusline+=\ Column\ %2c
    set statusline+=\ \|
endif
