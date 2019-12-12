dotfiles

https://www.atlassian.com/git/tutorials/dotfiles
https://news.ycombinator.com/item?id=11070797

```
git clone --separate-git-dir=$HOME/.dotfiles git@github.com:caioalonso/dotfiles $HOME/dotfiles-tmp
rm -r dotfiles-tmp
alias config='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
config checkout -- .
```
