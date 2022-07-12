{ config, pkgs, ... }:

{
  config = {
    home.username = "eee";
    home.homeDirectory = "/home/eee";

    home.stateVersion = "22.05";

    programs.home-manager.enable = true;
  };
  imports = [ ./modules/default.nix ];
  config.modules = {

    packages.enable = true; 

    git.enable = true;
    
    # wm
    # awesome.enable = true;

    # terminal
    kitty.enable = true;
    tmux.enable = true;

    vscode.enable = true;

    python.enable = true;
  };
}
