echo >&2 "Meson"
rm -rf meson-0.63.3
tar -xvf meson-0.63.3.tar.gz
cd meson-0.63.3

pip3 wheel -w dist --no-build-isolation --no-deps $PWD

pip3 install --no-index --find-links dist meson
install -vDm644 data/shell-completions/bash/meson /usr/share/bash-completion/completions/meson
install -vDm644 data/shell-completions/zsh/_meson /usr/share/zsh/site-functions/_meson
