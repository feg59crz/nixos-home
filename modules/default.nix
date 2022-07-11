{ inputs, pkgs, config, ... }:

{
  imports = [
    ./packages
    ./git
  ];
}
