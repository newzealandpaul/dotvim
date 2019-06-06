let mapleader = ","
let maplocalleader = "\\"

" easy escape
imap jk <ESC>
imap kj <ESC>

" toggle highlight trailing whitespace
nmap <silent> <leader>s :set nolist!<CR>

" Ctrl-N to disable search match highlight
nmap <silent> <C-N> :silent noh<CR>

" ,n to get the next location (compilation errors, grep etc)
nmap <leader>n :cn<CR>
nmap <leader>N :cp<CR>

" ,h to toggle highlight search
noremap <silent> <leader>h :set hls!<CR>

" Ctrl-A to switch between 2 last buffers
nmap <C-A> :b#<CR>

" Faster leader?
" http://sheerun.net/2014/03/21/how-to-boost-your-vim-productivity/
"let mapleader = "\<Space>"
nnoremap <Leader>w :w<CR>

" https://robots.thoughtbot.com/vim-splits-move-faster-and-more-naturally
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>