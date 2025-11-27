{ host, ... }:
{
  imports = [ ./hardware-configuration.nix ];
  system.stateVersion = "25.05";
  networking.hostName = host;
  services = {
    displayManager.gdm.enable = true;
    desktopManager.gnome.enable = true;

    xserver = {
      enable = true;
      desktopManager.runXdgAutostartIfNone = true;
      xkb.layout = "us";
      xkb.variant = "";
    };
  };
}
