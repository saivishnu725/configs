alias cdp='cd $HOME/Programs/'
alias h="cat $HOME/.zsh_history | sort | uniq | fzf | tr \";\" \"\n\" | grep \"^[^:]\" | tee >(bash)"
alias hc="cat $HOME/.zsh_history | sort | uniq | fzf | tr \";\" \"\n\" | grep \"^[^:]\" | copy"


#dotfiles
alias config='/usr/bin/git --git-dir=/home/saivishnu/.cfg/ --work-tree=/home/saivishnu'

#list
alias ls='ls --color=auto'
alias la='ls -a'
alias ll='ls -la'
alias l='ls'
alias l.="ls -A | egrep '^\.'"
#alias ll='ls -alF'
#alias la='ls -A' 
#alias l='ls -CF' 
#alias ls='ls --color=auto' 

#shortforms
alias grep='grep --color=auto' 
alias cls='clear'
alias cd..='cd ..'
alias vim='nvim'


#rust stuffs
#alias cr='rustfmt src/main.rs && cargo run'
#alias cb='rustfmt src/main.rs && cargo build'

#flutter stuffs
#alias frl='flutter run -d linux'
#alias frw='flutter run -d chrome'
#alias fpg='flutter pub get'
#alias f='flutter '
#alias fcr='echo \"flutter\ create\ \-\-project\-name\ Calculator\ \-\-org\ com\.vishnu\ \-\-description\ \"A\ simple\ calculator\ app\ to\ check\ my\ Flutter\ knowledge\.\ \ Calculator\/'

#git
alias gita='git add'
alias gitaf='git add .'
alias gits='git status'
alias gitc='git commit -m' 
alias gitp='git push'
alias gitac='git add . && git commit -m'

#video player
#alias video='mpv '

#progress bar for dd
alias dd='dd status=progress '

#make
alias m='make '
alias mr='make run'
alias pg='ping google.com -c3'
alias copy='xclip -selection clipboard'
alias pa='xclip -o -selection clipboard'
	
#some Arch based things
alias install='sudo pacman -S'
alias update='sudo pacman -Sy'
alias upgrade='sudo pacman -Syyu'
alias uninstall='sudo pacman -Rnsu'
	
#some Debian based things
#alias install='sudo apt install'
#alias update='sudo apt update'
#alias upgrade='sudo apt update && sudo apt upgrade'
#alias uninstall='sudo apt remove'

#some Fedora things
#alias install='sudo dnf install'
#alias upgrade='sudo dnf upgrade'
#alias uninstall='sudo dnf remove'

#sql
alias sql="mysql -p -u saivishnu"


#fix obvious typo's
alias pdw="pwd"
#alias udpate='sudo pacman -Syyu'
#alias upate='sudo pacman -Syyu'
#alias updte='sudo pacman -Syyu'
#alias updqte='sudo pacman -Syyu'
#alias upqll="paru -Syu --noconfirm"
#alias upal="paru -Syu --noconfirm"

## Colorize the grep command output for ease of use (good for log files)##
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

#readable output
alias df='df -h'


#which graphical card is working
#alias whichvga="/usr/local/bin/arcolinux-which-vga"

#free
alias free="free -mt"

#continue download
alias wget="wget -c"

#userlist
alias userlist="cut -d: -f1 /etc/passwd"

#merge new settings
alias merge="xrdb -merge ~/.Xresources"

# Aliases for software managment
# pacman or pm
#alias pacman='sudo pacman --color auto'
#alias update='sudo pacman -Syyu'

# paru as aur helper - updates everything
#alias pksyua="paru -Syu --noconfirm"
#alias upall="paru -Syu --noconfirm"

#ps
alias psa="ps auxf"
alias psgrep="ps aux | grep -v grep | grep -i -e VSZ -e"

#grub update
alias update-grub="sudo grub-mkconfig -o /boot/grub/grub.cfg"

#add new fonts
alias update-fc='sudo fc-cache -fv'

#arcolinux applications
#alias att="arcolinux-tweak-tool"
#alias adt="arcolinux-desktop-trasher"
#alias abl="arcolinux-betterlockscreen"
#alias agm="arcolinux-get-mirrors"
#alias amr="arcolinux-mirrorlist-rank-info"
#alias aom="arcolinux-osbeck-as-mirror"
#alias ars="arcolinux-reflector-simple"
#alias atm="arcolinux-tellme"
#alias avs="arcolinux-vbox-share"
#alias awa="arcolinux-welcome-app"

#remove
#alias rmgitcache="rm -r ~/.cache/git"

#copy/paste all content of /etc/skel over to home folder - backup of config created - beware
#alias skel='[ -d ~/.config ] || mkdir ~/.config && cp -Rf ~/.config ~/.config-backup-$(date +%Y.%m.%d-%H.%M.%S) && cp -rf /etc/skel/* ~'
#backup contents of /etc/skel to hidden backup folder in home/user
#alias bupskel='cp -Rf /etc/skel ~/.skel-backup-$(date +%Y.%m.%d-%H.%M.%S)'

#copy bashrc-latest over on bashrc - cb= copy bashrc
#alias cb='sudo cp /etc/skel/.bashrc ~/.bashrc && source ~/.bashrc'
#copy /etc/skel/.zshrc over on ~/.zshrc - cb= copy zshrc
#alias cz='sudo cp /etc/skel/.zshrc ~/.zshrc && exec zsh'

#switch between bash and zsh
alias tobash="sudo chsh $USER -s /bin/bash && echo 'Now log out.'"
alias tozsh="sudo chsh $USER -s /bin/zsh && echo 'Now log out.'"

#switch between lightdm and sddm
#alias tolightdm="sudo pacman -S lightdm lightdm-gtk-greeter lightdm-gtk-greeter-settings --noconfirm --needed ; sudo systemctl enable lightdm.service -f ; echo 'Lightm is active - reboot now'"
#alias tosddm="sudo pacman -S sddm --noconfirm --needed ; sudo systemctl enable sddm.service -f ; echo 'Sddm is active - reboot now'"

#quickly kill conkies
#alias kc='killall conky'

#hardware info --short
alias hw="hwinfo --short"

#check vulnerabilities microcode
alias microcode='grep . /sys/devices/system/cpu/vulnerabilities/*'


#shopt
#shopt -s autocd # change to named directory
#shopt -s cdspell # autocorrects cd misspellings
#shopt -s cmdhist # save multi-line commands in history as single line
#shopt -s dotglob
#shopt -s histappend # do not overwrite history
#shopt -s expand_aliases # expand aliases

#youtube-dl
#alias yta-aac="youtube-dl --extract-audio --audio-format aac "
alias yt-best-audio="youtube-dl --extract-audio --audio-format best "
#alias yta-flac="youtube-dl --extract-audio --audio-format flac "
alias yt-m4a="youtube-dl --extract-audio --audio-format m4a "
alias yt-mp3="youtube-dl --extract-audio --audio-format mp3 "
#alias yta-opus="youtube-dl --extract-audio --audio-format opus "
#alias yta-vorbis="youtube-dl --extract-audio --audio-format vorbis "
alias yt-wav="youtube-dl --extract-audio --audio-format wav "
alias yt-best-video="youtube-dl -f bestvideo+bestaudio "

#Recent Installed Packages
alias rip="expac --timefmt='%Y-%m-%d %T' '%l\t%n %v' | sort | tail -200 | nl"
alias riplong="expac --timefmt='%Y-%m-%d %T' '%l\t%n %v' | sort | tail -3000 | nl"

#iso and version used to install ArcoLinux
#alias iso="cat /etc/dev-rel | awk -F '=' '/ISO/ {print $2}'"

#Cleanup orphaned packages
#alias cleanup='sudo pacman -Rns $(pacman -Qtdq)'

#search content with ripgrep
alias rg="rg --sort path"

#get the error messages from journalctl
alias jctl="journalctl -p 3 -xb"

#editor for important configuration files
#know what you do in these files
#alias nlightdm="sudo $EDITOR /etc/lightdm/lightdm.conf"
#alias npacman="sudo $EDITOR /etc/pacman.conf"
alias ngrub="sudo $EDITOR /etc/default/grub"
alias nconfgrub="sudo $EDITOR /boot/grub/grub.cfg"
#alias nmkinitcpio="sudo $EDITOR /etc/mkinitcpio.conf"
#alias nmirrorlist="sudo $EDITOR /etc/pacman.d/mirrorlist"
#alias narcomirrorlist='sudo nano /etc/pacman.d/arcolinux-mirrorlist'
#alias nsddm="sudo $EDITOR /etc/sddm.conf"
alias nfstab="sudo $EDITOR /etc/fstab"
#alias nnsswitch="sudo $EDITOR /etc/nsswitch.conf"
#alias nsamba="sudo $EDITOR /etc/samba/smb.conf"
#alias ngnupgconf="sudo nano /etc/pacman.d/gnupg/gpg.conf"
alias nb="$EDITOR ~/.bashrc"
alias nz="$EDITOR ~/.zshrc"

#gpg
#verify signature for isos
#alias gpg-check="gpg2 --keyserver-options auto-key-retrieve --verify"
#alias fix-gpg-check="gpg2 --keyserver-options auto-key-retrieve --verify"
#receive the key of a developer
#alias gpg-retrieve="gpg2 --keyserver-options auto-key-retrieve --receive-keys"
#alias fix-gpg-retrieve="gpg2 --keyserver-options auto-key-retrieve --receive-keys"
#alias fix-keyserver="[ -d ~/.gnupg ] || mkdir ~/.gnupg ; cp /etc/pacman.d/gnupg/gpg.conf ~/.gnupg/ ; echo 'done'"

#fixes
#alias fix-permissions="sudo chown -R $USER:$USER ~/.config ~/.local"

#systeminfo
alias probe="sudo -E hw-probe -all -upload"
alias sysfailed="systemctl list-units --failed"

#shutdown or reboot
alias ssn="sudo shutdown now"
alias sr="sudo reboot"

#update betterlockscreen images
#alias bls="betterlockscreen -u /usr/share/backgrounds/arcolinux/"

#give the list of all installed desktops - xsessions desktops
#alias xd="ls /usr/share/xsessions"






#######arch related / arco related

#pacman unlock
#alias unlock="sudo rm /var/lib/pacman/db.lck"
#alias rmpacmanlock="sudo rm /var/lib/pacman/db.lck"

#arcolinux logout unlock
#alias rmlogoutlock="sudo rm /tmp/arcologout.lock"

#alias keyfix="/usr/local/bin/arcolinux-fix-pacman-databases-and-keys"

#maintenance
#alias big="expac -H M '%m\t%n' | sort -h | nl"
#alias downgrada="sudo downgrade --ala-url https://bike.seedhost.eu/arcolinux/"

#get fastest mirrors in your neighborhood
#alias mirror="sudo reflector -f 30 -l 30 --number 10 --verbose --save /etc/pacman.d/mirrorlist"
#alias mirrord="sudo reflector --latest 30 --number 10 --sort delay --save /etc/pacman.d/mirrorlist"
#alias mirrors="sudo reflector --latest 30 --number 10 --sort score --save /etc/pacman.d/mirrorlist"
#alias mirrora="sudo reflector --latest 30 --number 10 --sort age --save /etc/pacman.d/mirrorlist"
#our experimental - best option for the moment
#alias mirrorx="sudo reflector --age 6 --latest 20  --fastest 20 --threads 5 --sort rate --protocol https --save /etc/pacman.d/mirrorlist"
#alias mirrorxx="sudo reflector --age 6 --latest 20  --fastest 20 --threads 20 --sort rate --protocol https --save /etc/pacman.d/mirrorlist"

#mounting the folder Public for exchange between host and guest on virtualbox
#alias vbm="sudo /usr/local/bin/arcolinux-vbox-share"

#skip integrity check
#alias paruskip='paru -S --mflags --skipinteg'
#alias yayskip='yay -S --mflags --skipinteg'
#alias trizenskip='trizen -S --skipinteg'

#to use java 8
alias java8='$HOME/Downloads/jdk8/bin/java'
alias javac8='$HOME/Downloads/jdk8/bin/javac'
alias appletviewer='$HOME/Downloads/jdk8/bin/appletviewer'
alias addReadmeLicense="cp ~/Templates/{LICENSE,README.md} ."
alias plexstatus="sudo systemctl status plexmediaserver.service"
alias plexstart="sudo systemctl start plexmediaserver.service"
alias plexstop="sudo systemctl stop plexmediaserver.service"
alias cdw="cd ~/Desktop/They\ Both\ Die\ at\ the\ End "
alias imgfs="image -s -f"
alias img="image -s"
alias img="image -p"
alias imgf="image -f"
