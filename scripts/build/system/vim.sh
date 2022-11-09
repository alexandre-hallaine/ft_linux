echo >&2 "Vim"
rm -rf vim-9.0.0739
tar -xvf vim-9.0.0739.tar.gz
cd vim-9.0.0739

echo '#define SYS_VIMRC_FILE "/etc/vimrc"' >> src/feature.h

./configure --prefix=/usr

make

# chown -Rv tester .
# su tester -c "LANG=en_US.UTF-8 make -j1 test" &> vim-test.log

make install

ln -sv vim /usr/bin/vi
for L in  /usr/share/man/{,*/}man1/vim.1; do
    ln -sv vim.1 $(dirname $L)/vi.1
done

ln -sv ../vim/vim90/doc /usr/share/doc/vim-9.0.0739

cat > /etc/vimrc << "EOF"
" Begin /etc/vimrc

" Ensure defaults are set before customizing settings, not after
source $VIMRUNTIME/defaults.vim
let skip_defaults_vim=1

set nocompatible
set backspace=2
set mouse=
set number
syntax on

" End /etc/vimrc
EOF
