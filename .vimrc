" from http://nvie.com/posts/how-i-boosted-my-vim/


" This must be first, because it changes other options as side effect
set nocompatible

" Use pathogen to easily modify the runtime path to include all
" plugins under the ~/.vim/bundle directly
runtime! autoload/pathogen.vim
silen! call pathogen#infect()
silent! call pathogen#helptags()
silent! call pathogen#runtime_append_all_bundles()

" Quickly edit/reload the vimrc file
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

source $VIMRUNTIME/mswin.vim
behave mswin

"This means that you can have unwritten changes to a file and open a new file using :e, without being forced to write or undo your changes first. 
set hidden

set expandtab     " tabs are spaces, not tabs
set softtabstop=4 " let backspace delete indent
set nowrap        " don't wrap lines
set tabstop=4     " a tab is four spaces
set backspace=indent,eol,start
                  " allow backspacing over everything in insert mode
set autoindent    " always set autoindenting on
set copyindent    " copy the previous indentation on autoindenting
set number        " always show line numbers
set shiftwidth=4  " number of spaces to use for autoindenting
set shiftround    " use multiple of shiftwidth when indenting with '<' and '>'
set showmatch     " set show matching parenthesis
set ignorecase    " ignore case when searching
set smartcase     " ignore case if search pattern is all lowercase,
                  "    case-sensitive otherwise
set smarttab      " insert tabs on the start of a line according to
                  "    shiftwidth, not tabstop
set hlsearch      " highlight search terms
set incsearch     " show search matches as you type


set history=1000         " remember more commands and search history
set undolevels=1000      " use many muchos levels of undo
set wildignore=*.swp,*.bak,*.pyc,*.class
set title                " change the terminal's title
set visualbell           " don't beep
set noerrorbells         " don't beep



set nobackup
set noswapfile


filetype plugin indent on
syntax on
autocmd filetype python set expandtab


" switch syntax highlighting on, when the terminal has colors
syntax on

"For showing tabs in languages such as python
"set list

"to avoid showing tabs in html and xml
autocmd filetype html,xml set listchars-=tab:>.


"If you press <F2>, Vim will switch to paste mode, disabling all kinds of smartness and just pasting a whole buffer of text. Then, you can disable paste mode again with another press of <F2>.

set pastetoggle=<F2>


" Use Q for formatting the current paragraph (or selection)
vmap Q gq
nmap Q gqap

"Tired of clearing highlighted searches by searching for “ldsfhjkhgakjks”? Use this:
nmap <silent> <leader>/ :nohlsearch<CR>

color solarized
set cursorline
"hi cursorline guibg=#333333
"hi CursorColumn guibg=#333333


if has('cmdline_info')
	set ruler                   " show the ruler
	set rulerformat=%30(%=\:b%n%y%m%r%w\ %l,%c%V\ %P%) " a ruler on steroids
	set showcmd                 " show partial commands in status line and
								" selected characters/lines in visual mode
endif

if has('statusline')
set laststatus=2

" Broken down into easily includeable segments
set statusline=%<%f\   " Filename
set statusline+=%w%h%m%r " Options
"set statusline+=%{fugitive#statusline()} "  Git Hotness
set statusline+=\ [%{&ff}/%Y]            " filetype
set statusline+=\ [%{getcwd()}]          " current dir
"set statusline+=\ [A=\%03.3b/H=\%02.2B] " ASCII / Hexadecimal value of char
set statusline+=%=%-14.(%l,%c%V%)\ %p%%  " Right aligned file nav info
endif

set backspace=indent,eol,start  " backspace for dummys
set linespace=0                 " No extra spaces between rows
set nu                          " Line numbers on
set showmatch                   " show matching brackets/parenthesis
set incsearch                   " find as you type search
set hlsearch                    " highlight search terms
set winminheight=0              " windows can be 0 line high 
set ignorecase                  " case insensitive search
set smartcase                   " case sensitive when uc present
set wildmenu                    " show list instead of just completing
set wildmode=list:longest,full  " command <Tab> completion, list matches, then longest common part, then all.
set whichwrap=b,s,h,l,<,>,[,]   " backspace and cursor keys wrap to
set scrolljump=5                " lines to scroll when cursor leaves screen
set scrolloff=3                 " minimum lines to keep above and below cursor
set foldenable                  " auto fold code
set gdefault                    " the /g flag on :s substitutions by default

" For when you forget to sudo.. Really Write the file.
cmap w!! w !sudo tee % >/dev/null

set lines=50
set columns=100
