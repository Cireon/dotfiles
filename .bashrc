# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# Shell completion
set show-all-if-ambiguous on

# Include profile.d files.
for i in ~/profile.d/*.sh ; do
    if [ -r "$i" ]; then
        . $i
    fi
done

source ~/.bashrc.local
