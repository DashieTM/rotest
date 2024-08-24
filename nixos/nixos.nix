{
  conf = {
    monitor = "DP-2";
    username = "dashie";
    # the name of your system
    hostname = "nixos";
  };
  # modules
  mods = {
    coding.enable = false;
    flatpak.enable = false;
    printing.enable = false;
    keepassxc.enable = false;
    defaultDrives.enable = false;
    extraDrives = [
      {
        name = "boot";
        drive = {
          device = "/dev/disk/by-label/BOOT";
          fsType = "vfat";
          options = [ "rw" "fmask=0022" "dmask=0022" "noatime" ];
        };
      }
      {
        name = "";
        drive = {
          device = "/dev/disk/by-label/ROOT";
          fsType = "ext4";
          options = [ "noatime" "nodiratime" "discard" ];
        };
      }
    ];
    sops.enable = false;
    nextcloud.enable = false;
    hyprland.monitor = [
      # default
      # TODO change this to your resolution
      "DP-2,3440x1440@144,0x0,1"
      # all others
      ",highrr,auto,1"
    ];
    # or amd, whatever you have
    nvidia.enable = true;
    kde_connect.enable = true;
    # TODO change this to your main resolution
    # -> this will be your login manager
    greetd = { resolution = "3440x1440@144"; };
  };
}
