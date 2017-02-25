alias bash_refresh="source ~/.bashrc"

# Folder navigation aliases
alias ls='ls -GFh'
ls --color=auto &> /dev/null && alias ls='ls -Fh --color=auto' ||
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

function c()
{
  cd $1 && l
}

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

# Quick file tree
alias filetree="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"

# Laravel aliases
alias artisan='php artisan'

# Misc
alias md5='md5sum'
alias py='python'
alias g='git'

# Autocomplete for aliases
complete -o default -o nospace -F _git g
