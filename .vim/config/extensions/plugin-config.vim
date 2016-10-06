"plugin-config.vim
"{{{ syntastic
"@todo find a way to toggle this.
augroup syntastic
        autocmd Bufenter,BufRead */drupal*/* let g:syntastic_php_phpcs_args="--standard=Drupal --tab-width=0"
        autocmd Bufenter,BufRead */drupal*/* let g:syntastic_php_phpcs_disable=0
        autocmd BufLeave */drupal*/* let g:syntastic_php_phpcs_args="--tab-width=0"
        autocmd BufLeave */drupal*/* let g:syntastic_php_phpcs_disable=1
augroup end
"}}}
"{{{ Tag list config
nnoremap <c-t> :TlistOpen<CR>
nnoremap <c-n> :TlistAddFiles
""set statusline+=\ \%{Tlist_Get_Tagname_By_Line()}\ \|
let g:Tlist_Show_One_File=0
let g:Tlist_Close_On_Select=1
let g:Tlist_Compact_Format=1
let g:Tlist_Exit_OnlyWindow=1
augroup tagliststuff
    autocmd!
    autocmd FileType taglist vertical resize +15
augroup end
"}}}
"{{{ Gundo
noremap Z :GundoToggle<CR>
inoremap <leader>Z :GundoToggle<CR>
"}}}
let g:SuperTabDefaultCompletionType = 'context'
