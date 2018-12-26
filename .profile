# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

export NODEJS_HOME=/usr/local/lib/nodejs/node-v10.14.2/bin
export PATH=$NODEJS_HOME:$PATH

export WIN_HOME=/media/noam/OS/Users/noam
export WSL_BIN=$WIN_HOME/AppData/Local/lxss/rootfs/bin
export WSL_U_BIN=$WIN_HOME/AppData/Local/lxss/rootfs/usr/bin
export PATH=$PATH:$WSL_U_BIN:$WSL_BIN

