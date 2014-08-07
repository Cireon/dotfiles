echo 'reloading bash_profile...'

export LESS=' -r'
export PATH=~/bin:$PATH

source ~/.bash_profile.local

export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx

# Git aliases
alias log2="git log --graph --decorate=short"
alias tree="git log --graph --simplify-by-decoration --pretty=format:'%C(green)%cr %C(white)%d' --all"
alias log="git log --graph --pretty=format:'%Cgreen%cr %C(bold blue)<%an> %Creset%s %Cred%+d' --branches"
alias git-root='cd $(git rev-parse --show-cdup)'

# Laravel aliases
alias artisan="php artisan"

# Folder aliases
alias dev="c ~/dev"
alias edu="c ~/edu"

# More aliases
function c()
{
  cd $1 && l
}

# ganked these from people
#not an alias, but I thought this simpler than the cd control
#If you pass no arguments, it just goes up one directory.
#If you pass a numeric argument it will go up that number of directories.
#If you pass a string argument, it will look for a parent directory with that name and go up to it.
function up()
{
  dir=""
  if [ -z "$1" ]; then
    dir=..
  elif echo $1 | grep -E '^[0-9]+$' > /dev/null; then
    x=0
    while [ $x -lt ${1:-1} ]; do
      dir=${dir}../
      x=$(($x+1))
    done
  else
    dir=${PWD%/$1/*}/$1
  fi
  cd "$dir";
}

#quick file tree
alias filetree="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"

alias reload=". ~/.bash_profile"
alias md5="md5sum"
alias goat='echo baah'
alias py="python"
#alias up="cd .."

asdfghjkl()
{   echo '
        ▄▄██▀▀▀▀▀▀▀████▄▄▄▄             
     ▄██▀                 ▀▀██▄▄        
    ██                        ▀▀█▄▄     
  ▄█▀                            ▀▀█▄   
 ▄█▀                                █▄  
 █▀                                  ▀█ 
▄█                  ▄                 ██
█▀      ██▄▄▄▄▄    ▄█                  █
█       █▄  ▀██████▀   ▄▄          ██  █
█        ▀█▄▄▄█▀       ██▀▀██▄▄▄▄▄▄█  ▄█
█                       ▀▄▄▄▀▀▀██▀    █▀
█▄     ▄▄                  ▀▀▀▀▀    ▄█▀ 
 █▄    █    ▄▄▄▄                   ▄█   
  █▄  ▀█▄  ▀▀▀███████▄▄▄   ▄     ▄█▀    
   █▄             ▀▀▀  █   █    ██      
    ▀█▄▄                 ██   ▄█▀       
      ▀▀█▄▄▄             ▄▄▄█▀▀         
          ▀▀█▀▀███▄▄▄███▀▀▀             
           █▀                           '
}