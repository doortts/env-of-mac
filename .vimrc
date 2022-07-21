syntax on

set laststatus=2
set t_Co=256
hi Comment  guifg=#80a0ff ctermfg=darkgray

nnoremap <Tab> >>_
nnoremap <S-Tab> <<_
inoremap <S-Tab> <C-D>
vnoremap <Tab> >gv
vnoremap <S-Tab> <gv
nnoremap 0 ^
vnoremap 0 ^
autocmd Filetype gitcommit setlocal spell textwidth=72

set smartcase
set paste

" Disable beep and flash with an autocmd
set noeb vb t_vb=
au GUIEnter * set vb t_vb=
