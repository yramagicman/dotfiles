source ~/.vim/config/extensions/vundle.vim
source ~/.vim/config/extensions/plugin-config.vim
source ~/.vim/config/vimrc.combined.vim
function! s:chartest()
let char = getchar()
let string = ''
while char != 13
    let char= getchar()
    let string .= nr2char(char)
    echom string
    if string  =='' || string == ''
        echom 'backspace'
    endif
endwhile
redraw
endfunction
command! Char call s:chartest()
