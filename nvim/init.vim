set showmatch               " show matching 
set ignorecase              " case insensitive 
set mouse=v                 " middle-click paste with 
set hlsearch                " highlight search 
set incsearch               " incremental search
set tabstop=4               " number of columns occupied by a tab 
set softtabstop=4           " see multiple spaces as tabstops so <BS> does the right thing
set expandtab               " converts tabs to white space
set shiftwidth=4            " width for autoindents
set autoindent              " indent a new line the same amount as the line just typed
set number                  " add line numbers
set wildmode=longest,list   " get bash-like tab completions
filetype plugin indent on   " allow auto-indenting depending on file type
syntax on                   " syntax highlighting
set mouse=a                 " enable mouse click
set clipboard=unnamedplus   " using system clipboard
filetype plugin on
set cursorline              " highlight current cursorline
set ttyfast                 " Speed up scrolling in Vim
set nospell

set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегцчня;abcdefghijklmnopqrstuvwxyz
map Ж :

call plug#begin()

Plug 'vim-airline/vim-airline'                  " status bar
Plug 'preservim/nerdtree'                       " tree
Plug 'tpope/vim-commentary'                     " make commentary with gc or gcc
Plug 'ap/vim-css-color'                         " css colors
Plug 'rafi/awesome-vim-colorschemes'            " themes
Plug 'ryanoasis/vim-devicons'                   " icons
Plug 'neoclide/coc.nvim', {'branch': 'release'} " autocomplition
Plug 'gelguy/wilder.nvim'                       " vim commands suggestions
Plug 'vim-autoformat/vim-autoformat'            " formatter
Plug 'vim-airline/vim-airline-themes'           " status bar themes
Plug 'jmcantrell/vim-virtualenv'                " python venv in vim
set encoding=UTF-8
set completeopt-=preview

call plug#end()

autocmd BufEnter * lcd %:p:h                    " sets the working directory to the current file's directory

" vim suggestions
call wilder#setup({'modes': [':', '/', '?']})
call wilder#set_option('renderer', wilder#popupmenu_renderer({
      \ 'highlighter': wilder#basic_highlighter(),
      \ }))

" autocomplition with tab
inoremap <silent><expr> <c-space> coc#refresh()
" shortcuts
nnoremap <C-n> :NERDTreeToggle<CR> "



