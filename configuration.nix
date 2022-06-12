{ config, pkgs, ... }: {
  system.stateVersion = "21.11";

  # minimal config required for the rebuild to work
  fileSystems."/" = {
    device = "/dev/disk/by-label/nixos";
    fsType = "ext4";
  };

  boot.loader.grub.device = "/dev/vda";
}
