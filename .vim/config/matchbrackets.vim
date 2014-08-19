"match pairs
ino ' ''<ESC>i
ino " ""<ESC>i
ino ( ()<ESC>i
ino { {}<ESC>i
ino [ []<ESC>i
ino < <><ESC>i
ino [<CR> [<CR>]<ESC>O
ino (<CR> (<Cr>)<ESC>O
ino {<CR> {<CR>}<ESC>O
" If inserted quickly, don't reinsert matching character
ino <> <>
ino () ()
ino [] []
ino {} {}
ino '' ''
ino "" ""
" This sequence (xi'...) surrounds a selected block in whatever character it's
" mapped to work with by copying and pasting the selected text inside the block
" and then appending the character at the end.
vno ' xi'<ESC>pa<ESC>'f'a
vno " xi"<ESC>pa<ESC>"f"a

" For some odd reason I don't need the closing character in these mappings. I
" guess the previous insert mode mappings take care of it, which is odd because
" that wasn't true with the single and double quote mappings
vno { xi{<ESC>pa<ESC>la
vno [ xi[<ESC>pa<ESC>la
vno ( xi(<ESC>pa<ESC>la
