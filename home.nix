{ config, pkgs, ... }:

{
  home.username = "eee";
  home.homeDirectory = "/home/eee";

  home.stateVersion = "22.05";

  programs.home-manager.enable = true;
}
