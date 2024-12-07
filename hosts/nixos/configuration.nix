{
  conf = {
    username = "dashie";
    # the name of your system
    hostname = "nixos";
    timezone = "Europe/Bucharest";
    defaultMonitor = "DP-2";
    defaultMonitorMode = "3440x1440@144";
    defaultMonitorScale = "1";
  };
  # modules
  mods = {
    coding.enable = false;
    flatpak.enable = false;
    printing.enable = false;
    keepassxc.enable = false;
    drives = {
      defaultDrives.enable = false;
      extraDrives = [
        {
          name = "boot";
          drive = {
            device = "/dev/disk/by-label/BOOT";
            fsType = "vfat";
            options = [
              "rw"
              "fmask=0022"
              "dmask=0022"
              "noatime"
            ];
          };
        }
        {
          name = "";
          drive = {
            device = "/dev/disk/by-label/ROOT";
            fsType = "ext4";
            options = [
              "noatime"
              "nodiratime"
              "discard"
            ];
          };
        }
      ];
    };
    sops.enable = false;
    nextcloud.enable = false;
    hyprland.monitor = [
      "DP-2,3440x1440@144,0x0,1"
      ",highrr,auto,1"
    ];
    gpu.nvidia.enable = true;
    kdeConnect.enable = true;
  };
}
