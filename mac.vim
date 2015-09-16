let Tlist_Ctags_Cmd="/usr/local/bin/ctags"

autocmd BufRead SCRATCH.txt :$ | put _ | startinsert

set shell=/bin/zsh

au BufEnter /private/tmp/crontab.* setl backupcopy=yes
