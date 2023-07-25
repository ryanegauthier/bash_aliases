alias aka='nano ~/.bash_aliases'

alias cmd='history|grep'
alias please='sudo !!'
alias untar='tar -zxvf '

# generators
alias getpass='openssl rand -base64 20'
alias mrid='uuidgen'
alias sshkey='ssh-keygen -t ed25519 -C'

# network tests
alias ping='ping -c 5'
alias fastping='ping -c 100 -s .2'
alias speed='speedtest-cli --server 2406 --simple'

alias ipex='dig +short myip.opendns.com @resolver1.opendns.com'
alias ipin='hostname -I | awk "{print \$1}"'
alias myips='ifconfig | grep -Eo "inet (addr:)?([0-9]*\.){3}[0-9]*" | grep -Eo "([0-9]*\.){3}[0-9]*" | grep -v "127.0.0.1"'

# system health
alias ptree='ps aux'
alias reboot='sudo reboot'
alias off='sudo shutdown -h now'
alias reload='source ~/.bashrc'

# file management
alias ll='ls -la'
alias bc='bc -l'
alias mkdir='mkdir -pv'
alias mv='mv -i'
alias cp='cp -i'
alias ln='ln -i'
alias backup='tar -zcvf $(date +%Y%m%d).tar.gz'
alias nuke='sudo rm -rf'

alias up='cd ..'
alias up2='cd ../..'
alias up3='cd ../../..'
alias up4='cd ../../../..'
alias up5='cd ../../../../..'

# system variables
alias path='echo -e ${PATH//:/\\n}'
alias now='date +"%T"'
alias nowdate='date +"%d-%m-%Y"'

# kubectl - more in the .kubectl_aliases file
alias cuddle='kubectl'


# docker
alias dk='docker'
alias dkl='docker logs -f'
alias dki='docker images'
alias dks='docker service'
alias dpsa='docker ps -a'
alias deit='docker exec -it'
alias drmc='docker rm $(docker ps --all -q -f status=exited)'
alias drmid='docker rmi $(docker images -q -f dangling=true)'


# git
alias clone='git clone'
alias commit='git commit -m'
alias push='git push'
alias gcb='git checkout -b'
alias gco='git checkout'
alias gstat='git status'
alias gdiff='git diff --name-status'
alias branches='git branch -a'



###### IT commands ######

alias ports='netstat -tulanp'

# shortcut  for iptables and pass it via sudo#
alias ipt='sudo /sbin/iptables'
 
# display all rules #
alias iptlist='sudo /sbin/iptables -L -n -v --line-numbers'
alias iptlistin='sudo /sbin/iptables -L INPUT -n -v --line-numbers'
alias iptlistout='sudo /sbin/iptables -L OUTPUT -n -v --line-numbers'
alias iptlistfw='sudo /sbin/iptables -L FORWARD -n -v --line-numbers'
alias firewall='iptlist'

# do not delete / or prompt if deleting more than 3 files at a time #
alias rm='rm -I --preserve-root'
  
# Parenting changing perms on / #
alias chown='chown --preserve-root'
alias chmod='chmod --preserve-root'
alias chgrp='chgrp --preserve-root'

# update on one command
alias update='sudo apt-get update && sudo apt-get upgrade && sudo apt update && sudo apt upgrade' 

# pass options to free ##
alias meminfo='free -m -l -t'
 
# get top process eating memory
alias psmem='ps auxf | sort -nr -k 4'
alias psmem10='ps auxf | sort -nr -k 4 | head -10'
 
# get top process eating cpu ##
alias pscpu='ps auxf | sort -nr -k 3'
alias pscpu10='ps auxf | sort -nr -k 3 | head -10'
 
# Get server cpu info ##
alias cpuinfo='lscpu'
 
# get GPU ram on desktop / laptop##
alias gpumeminfo='grep -i --color memory /var/log/Xorg.0.log'
alias shogpu='watch -d -n 0.5 nvidia-smi' 

