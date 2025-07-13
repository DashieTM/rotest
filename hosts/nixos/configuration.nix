{
  conf = {
    username = "lancelot";
    gpu = "amd";
    # the name of your system
    timezone = "Europe/Bucharest";
  };
  # modules
  mods = {
    coding.enable = false;
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
    hypr.hyprland = {
      defaultMonitor = "DP-2";
      defaultMonitorMode = "3440x1440@144";
      defaultMonitorScale = "1";
      monitor = [
        "DP-2,3440x1440@144,0x0,1"
        ",highrr,auto,1"
      ];
    };
    gpu.nvidia.enable = true;
    kdeConnect.enable = true;
  };
}
