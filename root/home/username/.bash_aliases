alias li='ls -1'
alias lola='ls -lhA'
alias git-vamos='git stash save "git-vamos backup" && git rup && git co master && git pull && git co develop && git pull ; git bra'
alias mount='grc mount'
alias tail='grc tail'
alias showColortailLogs='colortail -f -k ~/.colortail/php /path/to/logs/*.log'
alias showLogs='tail -f /path/to/logs/*.log'
alias docker='sudo docker'
alias docker-attach='docker attach'
alias docker-build='docker build'
alias docker-commit='docker commit'
alias docker-cp='docker cp'
alias docker-create='docker create'
alias docker-diff='docker diff'
alias docker-events='docker events'
alias docker-exec='docker exec'
alias docker-export='docker export'
alias docker-history='docker history'
alias docker-images='docker images'
alias docker-import='docker import'
alias docker-info='docker info'
alias docker-inspect='docker inspect'
alias docker-kill='docker kill'
alias docker-load='docker load'
alias docker-login='docker login'
alias docker-logout='docker logout'
alias docker-logs='docker logs'
alias docker-network='docker network'
alias docker-node='docker node'
alias docker-pause='docker pause'
alias docker-port='docker port'
alias docker-ps='docker ps'
alias docker-pull='docker pull'
alias docker-push='docker push'
alias docker-rename='docker rename'
alias docker-restart='docker restart'
alias docker-rm='docker rm'
alias docker-rmi='docker rmi'
alias docker-run='docker run'
alias docker-save='docker save'
alias docker-search='docker search'
alias docker-service='docker service'
alias docker-start='docker start'
alias docker-stats='docker stats'
alias docker-stop='docker stop'
alias docker-swarm='docker swarm'
alias docker-tag='docker tag'
alias docker-top='docker top'
alias docker-unpause='docker unpause'
alias docker-update='docker update'
alias docker-version='docker version'
alias docker-volume='docker volume'
alias docker-wait='docker wait'
function showGrcLogs {
  grc tail -f /path/to/logs/*access.log &
  grc tail -f /path/to/logs/*error.log ; fg
}
