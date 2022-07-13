
{ pkgs, lib, config, ... }:

with lib;
let cfg = config.modules.packages;

in {
    options.modules.packages = { enable = mkEnableOption "packages"; };
    config = mkIf cfg.enable {
      home.packages = with pkgs; [
        # cli
        vim nano wget curl bat fd ripgrep
        
        # virtualization 
        podman distrobox
      ];
    };
}
