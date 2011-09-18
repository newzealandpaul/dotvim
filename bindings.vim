let mapleader = ","
let maplocalleader = "\\"

" Don't use Ex mode, use Q for formatting
map Q gq

"make Y consistent with C and D
nnoremap Y y$

" toggle highlight trailing whitespace
nmap <silent> <leader>s :set nolist!<CR>

" Ctrl-N to disable search match highlight
nmap <silent> <C-N> :silent noh<CR>

" Ctrol-E to switch between 2 last buffers
nmap <C-E> :b#<CR>

" ,e to fast finding files. just type beginning of a name and hit TAB
nmap <leader>e :e **/

" Make shift-insert work like in Xterm
map <S-Insert> <MiddleMouse>
map! <S-Insert> <MiddleMouse>

" ,n to get the next location (compilation errors, grep etc)
nmap <leader>n :cn<CR>
nmap <leader>N :cp<CR>

" ,h to toggle highlight search
noremap <silent> <leader>h :set hls!<CR>

"set completeopt=menuone,preview,longest
set completeopt=menuone,preview
" set completeopt=longest,menuone " My old setting
" IDE like bahavior
" inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" inoremap <expr> <C-n> pumvisible() ? '<C-n>' : '<C-n><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'
" inoremap <expr> <M-,> pumvisible() ? '<C-n>' : '<C-x><C-o><C-n><C-p><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'

" Ctrl-A to switch between 2 last buffers
nmap <C-A> :b#<CR>

" Crtl-T to create a new tab
noremap <C-t> :tabnew<cr>

" driving me insane this thing
nmap :W :w
nmap :Q :q
nmap :E :e
