set cursorline
set gcr=n:blinkon0 "hides blinking cursor in normal
set go-=T "hides toolbar
colorscheme wombat

if has("gui")
    macmenu &File.New\ Tab key=<nop>

    map <D-t> <Plug>PeepOpen
    imap <D-t> <esc><Plug>PeepOpen
end

