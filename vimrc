" vundle init
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim

" Disable insecure modelines
set nomodeline

" Fix Homebrew Problems
let $PATH = '/usr/local/bin:'.$PATH

call vundle#rc()
source ~/.vim/vundle.vim
" end vundle init

source ~/.vim/global.vim
source ~/.vim/functions.vim
source ~/.vim/status.vim
source ~/.vim/bindings.vim
source ~/.vim/plugins.vim

if v:version >= 703
  source ~/.vim/latest.vim
endif

if has("macunix")
  source ~/.vim/mac.vim
endif

if has("macunix") || has("unix")
  source ~/.vim/mac-and-unix.vim
endif

if has("unix")
  source ~/.vim/unix.vim
endif

if has("macunix") && has("gui_running")
  source ~/.vim/mac-gui.vim
endif

if filereadable(expand("~/.vim_local"))
  source ~/.vim_local
endif

if !has("gui_running")
  source ~/.vim/console.vim
end
