"match pairs
ino ' ''<ESC>i
ino " ""<ESC>i
ino ( ()<ESC>i
ino { {}<ESC>i
ino [ []<ESC>i
ino [<CR> [<CR>]<ESC>O
ino (<CR> ()<ESC>a
ino {<CR> {<CR>}<ESC>O

vmap ' xi'<ESC>pa<ESC>'f'a
vmap " xi"<ESC>pa<ESC>"f"a
vmap { xi{<ESC>pa<ESC>la
vmap [ xi[<ESC>pa<ESC>la
vmap ( xi(<ESC>pa<ESC>la
