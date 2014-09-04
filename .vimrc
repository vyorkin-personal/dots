" use Vim setings instead of Vi,
" must come first cuz it changes other options as a side effect
set nocompatible

set number                      " turn on line numbers
set relativenumber              " use relative numbers
set numberwidth=3               " min num of cols to use for the line numbers

set mouse=a                     " enable mouse (in all modes)
set backspace=indent,eol,start  " allow backspace in insert mode
set history=100                 " how many commands & search patterns to keep in history
set visualbell                  " no sounds
set lazyredraw                  " don't redraw while in macros
set ruler                       " always display the current cursor position (row, col)
set ttyfast                     " use fast terminal connection
set shortmess=atI               " use short messages, skip :intro, truncate file msg to fit on the cmd line

set nowrap                      " don't wrap long lines
set linebreak                   " use 'breakat' to decide when to wrap long lines
set whichwrap=b,s,<,>,[,]       " allow wrap while moving with space, backspace, arrows (in normal & insert modes)
set textwidth=80                " maximum width of text (useful for formatting with gq)
set formatoptions=qlcrnj1       " format options that doesn't suck

" display unprintable characters
set list
" strings to use in list mode (tabs, end of line, trailing spaces, etc)
set lcs=tab:▸\ ,eol:¬,trail:·,extends:>,precedes:<

" status line
set laststatus=2                " always show status line
set cmdheight=2                 " use 2 lines to display commands (height of line at the bottom)
set showcmd                     " display incomplete commands
set showmode                    " show current mode

" indentation: keep tabstop on 8 & use softtabstop set to 2
set autoindent                  " copy indent from current line when starting a new line
set smartindent                 " enable smart indent
set smarttab                    " use shiftwidth to insert blanks on <Tab>
set shiftwidth=2                " number of spaces to use for each (auto)indent
set softtabstop=2               " number of spaces that a <Tab> counts for edit operations
set expandtab                   " always insert spaces instead of tabs
set shiftround                  " round indent when shifting

set autoread                    " automatically read file when it has been changed outside of Vim
set autowriteall                " always write modified files (don't need to set autowrite)

" search
set ignorecase                  " ignore case when searching
set smartcase                   " override ignorecase if the search pattern contains upper case letters
set incsearch                   " display the match for a search pattern when halfway typing it

" bracket matching
set showmatch                   " briefly jump to the matching bracket
set matchtime=1                 " how long to show matching paren

" window splitting
set splitbelow                  " put a new window on the right side
set splitright                  " put a new window below the current one (1/10 sec)

" scrolling
set scrolloff=12                " vertical offset
set sidescrolloff=12            " horizontal offset
set sidescroll=2                " minimal number of columns to scroll horizontally
set scrolljump=2                " number of lines to scroll when the cursor gets off the screen

set cursorline                  " highline the screen line of the cursor

if &t_Co > 1                    " if terminal supports colors
  syntax on                     " turn on syntax highlighting
  set hlsearch                  " highlight search matches
endif

" turn off swap files & backups
" cuz its really annoying
set noswapfile                  " don't use buffer swap files
set nowritebackup               " don't write backups

" switch on: filetype detection, filetype plugin files, filetype indent files
filetype plugin indent on

" keep undo history across sessions by storing it in file
silent !mkdir -p ~/.vim/undo > /dev/null 2>&1
set udir=~/.vim/undo/           " dir to store files with undo history
set udf                         " auto save/restore undo history on buffer write/read

" conceal settings
set cole=1                      " enable conceal
set conceallevel=2              " concealed text is completely hidden
set concealcursor=nc            " don't reveal the conceals unless on insert or visual modes

" if gui enabled
if has("gui_running")
  set guioptions-=TmrRlLb       " never show the toolbar & scrollbars

  set lines=42
  set columns=100
endif

set ttimeout                    " use key sequence timeouts
set ttimeoutlen=100             " how long to wait for a key seq to complete

let mapleader="\<Space>"        " use <Space> as leader key

au VimResized * :wincmd =       " resize splits when the window is resized
au FocusLost * :wa              " save all changed buffers on focus lost
" restore cursor position 
au BufReadPost *
  \ if line("'\"") > 1 && line("'\"") <= line("$") |
  \   exe "normal! g`\"" | 
  \ endif
