nvim-test:
  # rm -rf $HOME/.config/nvim
  rsync -avz --copy-links --chmod=D2755,F744 ./ "$HOME/.config/nvim/"
