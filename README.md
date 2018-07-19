This is my fork from The Ultimate vimrc:

Install
-------

```bash
git clone https://github.com/winterland1989/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install.sh

# some plugin may need manually compile
cd ~/.vim_runtime/plugins/vimproc.vim
make
```

Install `ag`, `ghc-mod`, this vim.rc need them.

Update
------

```bash
bash ~/.vim_runtime/update.sh

# some plugin may need manually compile
cd ~/.vim_runtime/plugins/vimproc.vim
make
```

Add your plugins to plugins.txt, it will get updated by update.sh .
