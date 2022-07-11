{ inputs, pkgs, config, ... }:

{
  imports = [
    ./packages
    ./git
    ./kitty

    ./vscode
  ];
}
