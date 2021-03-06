" be 'modern'
set nocompatible
syntax on
filetype plugin indent on

" prevent vim from adding that stupid empty line at the end of every file
set noeol
set binary

" presentation settings
set number              " precede each line with its line number
set numberwidth=3       " number of culumns for line numbers
set textwidth=0         " Do not wrap words (insert)
set nowrap              " Do not wrap words (view)
set showcmd             " Show (partial) command in status line.
set showmatch           " Show matching brackets.
set ruler               " line and column number of the cursor position
set wildmenu            " enhanced command completion
set visualbell          " use visual bell instead of beeping
set laststatus=2        " always show the status line
"set listchars=tab:▷⋅,trail:·,eol:$
set listchars=tab:▷⋅,trail:·
set list

colorscheme wombat256mod
set background=dark

" highlight spell errors
hi SpellErrors guibg=red guifg=black ctermbg=red ctermfg=black

" behavior
                        " ignore these files when completing names and in
                        " explorer
set wildignore=.svn,CVS,.git,.hg,*.o,*.a,*.class,*.mo,*.la,*.so,*.obj,*.swp,*.jpg,*.png,*.xpm,*.gif
set wildmode=list:longest " Shell-like behaviour for command autocompletion
set shell=/bin/bash     " use bash for shell commands
set autowriteall        " Automatically save before commands like :next and :make
set hidden              " enable multiple modified buffers
set history=1000
set cf                  " enable error files & error jumping
set autoread            " automatically read files that has been changed on disk and doesn't have changes in vim
set backspace=indent,eol,start
set guioptions-=T       " disable toolbar"
set completeopt=menuone,preview
let bash_is_sh=1        " syntax shell files as bash scripts
set cinoptions=:0,(s,u0,U1,g0,t0 " some indentation options ':h cinoptions' for details
set modelines=5         " number of lines to check for vim: directives at the start/end of file
"set fixdel                 " fix terminal code for delete (if delete is broken but backspace works)
set autoindent          " automatically indent new line

set softtabstop=2
set tabstop=2           " number of spaces in a tab
set shiftwidth=2        " number of spaces for indent
set expandtab           " expand tabs into spaces
set smarttab
set splitright          " make new vplits on the right
set splitbelow          " make new splits on bottom

" scroll settings
set scrolloff=3   " more context around cursor
set sidescroll=3  " when scrolling horizonally

" mouse settings
if has("mouse")
  " set mouse=a
endif
set mousehide                           " Hide mouse pointer on insert mode."

" search settings
set incsearch           " Incremental search
set hlsearch            " Highlight search match
set ignorecase          " Do case insensitive matching
set smartcase           " do not ignore if search pattern has CAPS

" omni completion settings
set ofu=syntaxcomplete#Complete
let g:rubycomplete_buffer_loading = 0
let g:rubycomplete_classes_in_global = 1
" set completeopt=longest,menuone " see bindings.vim

" directory settings
set backupdir=~/.backup,.       " list of directories for the backup file
set directory=~/.backup,~/tmp,. " list of directory names for the swap file

" folding
set foldcolumn=0        " columns for folding
set foldmethod=indent   " fold based on indent
set foldnestmax=3       " deepest fold is 3 levels
set foldlevel=9
set nofoldenable        "dont fold by default "

" extended '%' mapping for if/then/else/end etc
runtime macros/matchit.vim

"other
set showtabline=0

"buffer
au BufRead,BufNewFile *.md setlocal wrap textwidth=80 linebreak nolist showbreak=…
autocmd BufRead,BufNewFile */Scripts/*.md Goyo
command! -nargs=* Wrap set wrap linebreak nolist showbreak=… textwidth=80

vmap <D-j> gj
vmap <D-k> gk
vmap <D-4> g$
vmap <D-6> g^
vmap <D-0> g^
nmap <D-j> gj
nmap <D-k> gk
nmap <D-4> g$
nmap <D-6> g^
nmap <D-0> g^

" <Ctrl-l> redraws the screen and removes any search highlighting.
nnoremap <silent> <C-s> :nohl<CR><C-l>



