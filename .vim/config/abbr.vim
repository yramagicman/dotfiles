"match pairs
ino ' ''<esc>i
ino " ""<esc>i
ino ( ()<esc>i
ino { {}<esc>i
ino [ []<esc>i
ino [<CR> [<CR>]<esc>O
ino (<CR> ()<esc>a
ino {<CR> {<CR>}<esc>O

vmap ' xi'<esc>pa<ESC>'f'a
vmap " xi"<esc>pa<ESC>"f"a
vmap { xi{<esc>pa<ESC>la
vmap [ xi[<esc>pa<ESC>la
vmap ( xi(<esc>pa<ESC>la
