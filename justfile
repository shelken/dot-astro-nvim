nvim-test:
  # rm -rf $HOME/.config/nvim
  rsync -avz --copy-links --chmod=D2755,F744 ./ "$HOME/.config/nvim/"

art src:
  img2art {{ src }} --with-color --scale 0.3 --save-raw /tmp/art.txt
