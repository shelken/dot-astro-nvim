nvim-test:
  rm -rf $HOME/.config/astronvim/lua/user
  rsync -avz --copy-links --chmod=D2755,F744 ./ "$HOME/.config/astronvim/lua/user"
