export LESS+=' -r'

export PATH=$PATH:/c/Program\ Files\ \(x86\)/GnuWin32/bin
export PATH=$PATH:/c/Python34
export PATH=$PATH:~/bin

# Git aliases
alias checkout="git checkout"
alias d="git diff"
alias status="git status -sb"
alias s="status"
alias log2="git log --graph --decorate=short"
alias tree="git log --graph --simplify-by-decoration --pretty=format:'%C(green)%cr %C(white)%d' --all"
alias log="git log --graph --pretty=format:'%Cgreen%cr %C(bold blue)<%an> %Creset%s %Cred%+d' --branches"
alias gup="git pull && git submodule update"
alias git-root='cd $(git rev-parse --show-cdup)'
alias goat='echo baah'

# Applications
#alias subl="/c/Program\ Files/Sublime\ Text\ 3/sublime_text.exe"
#alias vs="/c/Program\ Files\ \(x86\)/Microsoft\ Visual\ Studio\ 11.0/Common7/IDE/devenv.exe"
alias ex="explorer ."

# Laravel aliases
alias artisan="php artisan"

# More aliases
c()
{
	cd $1 && ls -F --color=always
}

alias reload=". ~/.bash_profile"
alias l="ls -F --color=always"
alias la="ls -la --color=always"
alias md5="md5sum"

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