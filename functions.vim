
" auto cd to root of hg/git project for current buffer's file
" from https://bitbucket.org/tednaleid/vimrc/src/1316ff2f757e/.vimrc
function! s:set_working_directory_for_project()
  let wd = expand("%:p:h")
  silent exe "cd " . wd

  let git_root = s:git_root()
  if git_root != ""
    silent exe "cd " . git_root
    return
  endif

  let hg_root = s:mercurial_root()
  if hg_root != "" 
    silent exe "cd " . hg_root
    return
  endif

endfunction

function! s:mercurial_root()
  let mercurial_root = system('hg root')

  if v:shell_error != 0
    return ""
  endif
  return mercurial_root
endfunction

function! s:git_root()
  let git_root = system('git rev-parse --show-toplevel')
  if v:shell_error != 0
    return ""
  endif
  return git_root
endfunction

au BufEnter * call s:set_working_directory_for_project()