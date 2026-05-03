alias aka='nano ~/.bash_aliases'

alias cmd='history|grep'
alias please='sudo $(history -p !!)'
alias untar='tar -zxvf '

# navigation
alias ..='cd ..'
alias ...='cd ../..'
alias ~='cd ~'
alias c='clear'
alias h='history'
alias j='jobs -l'
alias up='cd ..'
alias up2='cd ../..'
alias up3='cd ../../..'
alias up4='cd ../../../..'
alias up5='cd ../../../../..'

# generators
alias getpass='openssl rand -base64 20'
alias mrid='uuidgen'
alias sshkey='ssh-keygen -t ed25519 -C'
alias pubkey='cat ~/.ssh/id_ed25519.pub'

# network tests
alias ping='ping -c 5'
alias speed='speedtest-cli --server 2406 --simple'
alias ipex='dig +short myip.opendns.com @resolver1.opendns.com'
alias ipin='hostname -I | awk "{print \$1}"'
alias myips='ip addr show | grep -Eo "inet ([0-9]*\.){3}[0-9]*" | grep -Eo "([0-9]*\.){3}[0-9]*" | grep -v "127.0.0.1"'
alias tailip='tailscale ip'
alias wifistat='nmcli dev status'
alias listen='ss -tulanp'
alias openports='ss -tulanp | grep LISTEN'
alias weather='curl wttr.in/Spokane'

# system health
alias ptree='ps aux'
alias reboot='sudo reboot'
alias off='sudo shutdown -h now'
alias reload='source ~/.bashrc'
alias meminfo='free -m -l -t'
alias psmem='ps auxf | sort -nr -k 4'
alias psmem10='ps auxf | sort -nr -k 4 | head -10'
alias pscpu='ps auxf | sort -nr -k 3'
alias pscpu10='ps auxf | sort -nr -k 3 | head -10'
alias cpuinfo='lscpu'

# file management
alias ll='ls -la'
alias mkdir='mkdir -pv'
alias mv='mv -i'
alias cp='cp -i'
alias ln='ln -i'
alias rm='rm -I --preserve-root'
alias nuke='sudo rm -rf'
alias backup='tar -zcvf $(date +%Y%m%d).tar.gz'
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias diff='diff --color=auto'
alias less='less -R'
alias tree='tree -C'
alias df='df -h'
alias du='du -h'
alias duh='du -sh *'
alias biggest='du -sh * | sort -rh | head -10'
alias wget='wget -c'

# system variables
alias path='echo -e ${PATH//:/\\n}'
alias now='date +"%T"'
alias nowdate='date +"%d-%m-%Y"'

# update on one command
alias update='sudo apt update && sudo apt upgrade -y'

# permissions (safe)
alias chown='chown --preserve-root'
alias chmod='chmod --preserve-root'
alias chgrp='chgrp --preserve-root'

###### IT commands ######
alias ports='netstat -tulanp'

# ufw firewall
alias fwstatus='sudo ufw status verbose'
alias fwallow='sudo ufw allow'
alias fwdeny='sudo ufw deny'
alias firewall='sudo ufw status verbose'

###### docker ######
alias dk='docker'
alias dkl='docker logs -f'
alias dki='docker images'
alias dks='docker service'
alias dpsa='docker ps -a'
alias deit='docker exec -it'
alias drmc='docker rm $(docker ps --all -q -f status=exited)'
alias drmid='docker rmi $(docker images -q -f dangling=true)'
alias dkup='docker compose up -d'
alias dkdown='docker compose down'
alias dkre='docker compose restart'

###### git ######
alias clone='git clone'
alias commit='git commit -m'
alias push='git push'
alias pull='git pull'
alias gcb='git checkout -b'
alias gco='git checkout'
alias gstat='git status'
alias gdiff='git diff --name-status'
alias branches='git branch -a'
alias glog='git log --oneline --graph --decorate'

###### Home Assistant ######
alias halogs='docker logs -f homeassistant'
alias harestart='docker restart homeassistant'

###### OpenClaw ######
alias clawlogs='journalctl -u openclaw -f'
alias clawrestart='sudo systemctl restart openclaw'

###### Tailscale ######
alias tsup='sudo tailscale up'

###### tmux ######
alias tmls='tmux ls'
alias tmat='tmux attach -t'
alias tmnew='tmux new -s'
alias tmkill='tmux kill-session -t'
alias tmclaw='tmux attach -t openclaw'
alias tsdown='sudo tailscale down'
alias tsstatus='tailscale status'
