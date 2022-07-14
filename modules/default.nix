{ inputs, pkgs, config, ... }:

{
  imports = [
    ./packages
    ./git
    ./kitty
    ./tmux
    ./nano
    ./python
  ];
}
