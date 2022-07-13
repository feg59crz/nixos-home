{ pkgs, ... }:

{
  
  system.stateVersion = "21.11";

  home-manager.config = import ./home.nix;
}
