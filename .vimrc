 set nocompatible               " be iMproved
 filetype off                   " required!

 " Mapleader
 let mapleader = ','


 set background=dark

 " Vundle
 set rtp+=~/.vim/bundle/vundle/
 call vundle#rc()

 " Color scheme
 colorscheme wombat256mod

 " Line Numbers
 set number

" Tabstop
set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab
 
 " Switch off all auto-indenting
 set nocindent
 set nosmartindent
 set noautoindent
 set indentexpr=
 filetype indent off
 filetype plugin indent off
 
 " PuTTY
 "if &term =~ "xterm"
	"256 color --
	let &t_Co=256
 "endif

 " let Vundle manage Vundle
 " required! 
 Bundle 'gmarik/vundle'

 " My Bundles here:
 "
 " original repos on github
 " Functional
 Bundle 'scrooloose/nerdtree.git'
 Bundle 'scrooloose/nerdcommenter.git'
 Bundle 'ervandew/supertab.git'
 Bundle 'jwhitley/vim-matchit'
 Bundle 'tpope/vim-fugitive'

 " Syntax
 Bundle 'plasticboy/vim-markdown'
 Bundle 'groenewege/vim-less'
 
 " Syntax Checkers
 Bundle 'nrocco/vim-phplint'
 Bundle 'hokaccha/vim-html5validator.git'

 " vim-scripts repos
 " non github repos
 " Bundle 'git://git.wincent.com/command-t.git'
 " ...
 filetype plugin indent on     " required! 
 "
 " Brief help
 " :BundleList          - list configured bundles
 " :BundleInstall(!)    - install(update) bundles
 " :BundleSearch(!) foo - search(or refresh cache first) for foo
 " :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
 "
 " see :h vundle for more details or wiki for FAQ
 " NOTE: comments after Bundle command are not allowed..
 
 " Auto Open NERDTree when no file on command line
 function! StartUp()
	 if 0 == argc()
		 NERDTree
	 end
 endfunction
 au VimEnter * call StartUp()

 " Omnicomplete with SuperTab
 let g:SuperTabDefaultCompletionType = "context"

