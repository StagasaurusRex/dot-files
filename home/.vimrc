set background=dark
set number
set splitbelow
set splitright

syntax on

nnoremap <S-Enter> O<Esc>
nnoremap <CR> o<Esc>

" File Explorer
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize=25

augroup ProjectDrawrer
  autocmd!
  autocmd VimEnter * :Vexplore
  autocmd VimEnter * wincmd l 
augroup END

aug netrw_close
  au!
  au WinEnter * if winnr('$') == 1 && getbufvar(winbufnr(winnr()), "&filetype") == "netrw"|q|endif
aug END

autocmd Filetype gitcommit setlocal spell textwidth=72
autocmd Filetype markdown setlocal spell textwidth=80

