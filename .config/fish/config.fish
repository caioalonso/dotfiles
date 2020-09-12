set fish_greeting

. ~/.config/fish/aliases.fish

set GOPATH $HOME/go
set GOBIN $GOPATH/bin
set PATH $HOME/bin $HOME/.local/bin $PATH $HOME/.gem/ruby/2.7.0/bin $HOME/.cargo/bin $GOBIN
set EDITOR vim
set VISUAL vim
set GIT_EDITOR vim

starship init fish | source
