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
c()
{
  cd $1 && l
}

alias reload=". ~/.bash_profile"
alias md5="md5sum"
alias goat='echo baah'
alias py="python"
alias up="cd .."

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