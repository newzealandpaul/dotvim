call pathogen#runtime_append_all_bundles()

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
