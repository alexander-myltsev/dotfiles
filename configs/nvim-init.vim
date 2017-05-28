call plug#begin('~/.vim/plugged')

Plug 'easymotion/vim-easymotion', { 'tag': 'v3.0.1' }
Plug 'tpope/vim-surround', { 'tag': 'v2.1' }
Plug 'scrooloose/nerdtree', { 'tag': '5.0.0' }
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'vim-scripts/vim-auto-save', { 'tag': '0.1.7' }
Plug 'vim-latex/vim-latex', { 'tag': 'v1.9.0' }
Plug 'vim-airline/vim-airline', { 'tag': 'v0.8' }
Plug 'vim-airline/vim-airline-themes'
Plug 'idris-hackers/idris-vim'
Plug 'ctrlpvim/ctrlp.vim', { 'tag': '1.79' }
Plug 'ervandew/supertab', { 'tag': '2.1' }
Plug 'derekwyatt/vim-scala'
Plug 'tpope/vim-fugitive', { 'tag': 'v2.2' }
Plug 'chase/vim-ansible-yaml', { 'tag': 'v1.0' }
Plug 'ensime/ensime-vim'
Plug 'derekwyatt/vim-scala'
Plug 'melrief/vim-frege-syntax'
Plug 'ElmCast/elm-vim'

call plug#end()

set nocompatible
syntax enable
filetype plugin on
:set list
:set listchars=eol:⏎,tab:␉·,trail:␠,nbsp:⎵

set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab

au BufRead,BufNewFile *.md,*.latex setlocal textwidth=120
let g:Tex_SmartKeyQuote=0
set wrap

set wildmenu
let mapleader = "\<Space>"

" vim-auto-save
let g:auto_save = 1

" vim-airline
let g:airline_powerline_fonts = 1

" Relative lines
nnoremap <C-n> :call NumberToggle()<cr>
set relativenumber
set number
au FocusLost * :set number
au FocusGained * :set relativenumber
autocmd InsertEnter * :set number
autocmd InsertLeave * :set relativenumber

" no highlight search
set nohlsearch
set hlsearch!
nnoremap <F3> :set hlsearch!<CR>

" CtrlP
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.class
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" ensime
"autocmd BufWritePost *.scala silent :EnTypeCheck
nnoremap <localleader>t :EnTypeCheck<CR>
au FileType scala nnoremap <localleader>df :EnDeclaration<CR>

" LaTeX
let g:Tex_GotoError = 0

augroup vimrc-auto-mkdir
  autocmd!
  autocmd BufWritePre * call s:auto_mkdir(expand('<afile>:p:h'), v:cmdbang)
  function! s:auto_mkdir(dir, force)
    if !isdirectory(a:dir)
      \   && (a:force
      \       || input("'" . a:dir . "' does not exist. Create? [y/N]") =~? '^y\%[es]$')
      call mkdir(iconv(a:dir, &encoding, &termencoding), 'p')
    endif
  endfunction
augroup END
