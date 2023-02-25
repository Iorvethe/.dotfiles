set hidden
set ignorecase smartcase

set wildmenu
set wildignorecase

set expandtab
set autoindent cindent
set tabstop=4
set shiftwidth=4
set cinoptions=g0

set number relativenumber
set splitright splitbelow

set scrolloff=1
set mouse=a

set colorcolumn=80

syntax on

" Keymaps
" -------
inoremap <TAB> <ESC>
inoremap <S-TAB> <TAB>

noremap é w
noremap É W

onoremap aé aw
onoremap aÉ aW
onoremap ié iw
onoremap iÉ iW

noremap w <C-w>
noremap W <C-w><C-w>

noremap c h
noremap t j
noremap s k
noremap r l

noremap C H
noremap R L
noremap T J
noremap S K

noremap zs zj
noremap zt zk

noremap j t
noremap J T

noremap l c
noremap L C
noremap h r
noremap H R
noremap k s
noremap K S

noremap ]k ]s
noremap [k [s

noremap gs gk
noremap gt gj

noremap gb gT
noremap gé gt
noremap gB :exe "silent! tabfirst"<CR>
noremap gÉ :exe "silent! tablast"<CR>

noremap g" g0

noremap « <
noremap » >

noremap wc <C-w>h
noremap wt <C-w>j
noremap ws <C-w>k
noremap wr <C-w>l

" Close, split, only
noremap wd <C-w>c
noremap wo <C-w>s
noremap wp <C-w>o

noremap w<SPACE> :split<CR>
noremap w<CR> :vsplit<CR>

" Mappings for netrw
if has("autocmd")
    augroup netrw_dvorak_fix
        autocmd!
        autocmd filetype netrw call Fix_netrw_maps_for_dvorak()
    augroup END
    function! Fix_netrw_maps_for_dvorak()
        noremap <buffer> t j
        noremap <buffer> s k
        noremap <buffer> k s
    endfunction
endif
