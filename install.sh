mkdir ~/emacs_tmp
cd ~/emacs_tmp
git clone https://github.com/ZaJajn/Emacs-private.git
rm -rf ~/.emacs.d ~/.emacs
mv Emacs-private ~
cd ~
mv Emacs-private .emacs.d
mkdir -p .emacs.d/site-lisp
cd ~/emacs_tmp
git clone https://github.com/google/styleguide.git
mv styleguide google-style
mv google-style ~/.emacs.d/site-lisp
