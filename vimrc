set nocompatible
filetype off

" Set up vundle (source: http://erikzaadi.com/2012/03/19/auto-installing-vundle-from-your-vimrc/)
let vundle_readme=expand('~/.vim/bundle/Vundle.vim/README.md')
if !filereadable(vundle_readme)
  echo "Installing Vundle.."
  echo ""
  silent !mkdir -p ~/.vim/bundle
  silent !git clone https://github.com/gmarik/Vundle.vim ~/.vim/bundle/Vundle.vim

else
  set rtp+=~/.vim/bundle/Vundle.vim
  call vundle#begin()

  " Vundle
  Plugin 'gmarik/Vundle.vim'

  " Base plugins
  Plugin 'jlanzarotta/bufexplorer'
  Plugin 'tpope/vim-fugitive'
  Plugin 'majutsushi/tagbar'
  Plugin 'scrooloose/nerdcommenter'
  Plugin 'scrooloose/nerdtree'
  Plugin 'kien/ctrlp.vim'
  Plugin 'rking/ag.vim'
  Plugin 'scrooloose/syntastic'
  Plugin 'airblade/vim-gitgutter'

  " Colorscheme
  Plugin 'altercation/vim-colors-solarized.git'

  " EditorConfig
  Plugin 'editorconfig/editorconfig-vim'

  " Autocomplete
  Plugin 'mattn/emmet-vim'
  Plugin 'Valloric/YouCompleteMe'

  " Snippets
  Plugin 'SirVer/ultisnips'
  Plugin 'honza/vim-snippets'

  " Vim Note
  Plugin 'xolox/vim-misc'
  Plugin 'xolox/vim-notes'

  " Latex
  Plugin 'LaTeX-Box-Team/LaTeX-Box'

  call vundle#end()
endif

filetype plugin indent on

" Set tabs size and use spaces
set tabstop=2
set shiftwidth=2
set expandtab
set smarttab

" Line numbers, search and command options
set showcmd
set number
set showmatch
set hlsearch
set incsearch
set ignorecase
set smarttab
set ruler

" Insert mode options
set backspace=2
set autoindent
set formatoptions=c,q,r,t

" Enable syntax and set background
set background=dark
syntax on

" Change leader to comma
let mapleader = ","
let maplocalleader = ","

" Set shortcuts
map <F5> :setlocal spell! spelllang=en_us<CR>
nmap <F8> :TagbarToggle<CR>
nmap <F9> :NERDTreeToggle<CR>
set pastetoggle=<F10>

" Colorscheme
let g:solarized_termcolors=256
colorscheme solarized

" Move on the displayed lines, not real lines
noremap <silent> k gk
noremap <silent> j gj

" Customize Emmet keymappings
let g:user_emmet_expandabbr_key = '<c-e>'
let g:user_emmet_expandword_key = '<c-e>'
let g:user_emmet_wrap_with_abbreviation_key = '<c-e>'

" UltiSnips config
let g:UltiSnipsExpandTrigger="<c-c>"
let g:UltiSnipsJumpForwardTrigger="<c-c>"
let g:UltiSnipsJumpBackwardTrigger="<c-v>"

" YouCompleteMe
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'

" Run Makefile
nnoremap <leader>r :make! run<CR>

" Improve tabs management
nnoremap <leader>te :tabe<CR>
nnoremap <leader>tc :tabclose<CR>
nnoremap <leader>to :tabonly<CR>
nnoremap <C-l>      :tabnext<CR>
nnoremap <C-h>      :tabprevious<CR>
nnoremap <c-k>      :execute 'silent! tabmove ' . tabpagenr()<CR>
nnoremap <C-j>      :execute 'silent! tabmove ' . (tabpagenr()-2)<CR>
