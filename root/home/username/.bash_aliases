alias li='ls -1'
alias lola='ls -lhA'
alias git-vamos='git stash save "git-vamos backup" && git rup && git co master && git pull && git co develop && git pull ; git bra'
alias mount='grc mount'
alias tail='grc tail'
alias showColortailLogs='colortail -f -k ~/.colortail/php /path/to/logs/*.log'
alias showLogs='tail -f /path/to/logs/*.log'
function showGrcLogs {
  grc tail -f /path/to/logs/*access.log &
  grc tail -f /path/to/logs/*error.log ; fg
}