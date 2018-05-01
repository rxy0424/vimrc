# vimrc

This is my config file for vim with spf-13.

Here is the step to fellow me:

## 1. Install Vim
In ArchLinux, Install Vim with `sudo pacman -S gvim`

In Ubuntu, you need to complie Vim form source,when config you need to run this
```
./configure --with-features=huge --enable-pythoninterp --enable-rubyinterp --enable-luainterp --enable-perlinterp --with-python-config-dir=/usr/lib/python2.7/config/ --enable-gui=gtk2 --enable-cscope --enable-fail-if-missing
```
rember to change the `with-pyton-config-dir`

## 2. Install my conig
1.  git clone https://github.com/rxy0424/vimrc.git
2.  run ./install.py in vimrc directory

## 3. Install the changed [spf-13](https://github.com/rxy0424/spf13-vim)
The spf-13 i forked control plugins with vim-plug,you can install this version by 
```
curl https://raw.githubusercontent.com/rxy0424/spf13-vim/feature/vim-plug/bootstrap.sh -L > spf13-vim.sh && sh spf13-vim.sh
```
## 4. Complie YouCompleteMe.
if you use ArchLinux
```
sudo pacman -S python-pip clang
cd ~/.vim/bundle/YouCompleteMe
./install.py --clang-completer --system-libclang
```

if you use Ubuntu
```
cd ~/.vim/bundle/YouCompleteMe
./install.py --clang-completer
```
## 5. Have fun
You are welcome to PR.
