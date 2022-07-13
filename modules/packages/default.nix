
{ pkgs, lib, config, ... }:

with lib;
let cfg = config.modules.packages;

in {
    options.modules.packages = { enable = mkEnableOption "packages"; };
    config = mkIf cfg.enable {
      home.packages = with pkgs; [
        # cli
        bat fd ripgrep
        # gui
        qbittorrent
        # virtualization 
        distrobox xorg.xhost
      ];
    };
}
