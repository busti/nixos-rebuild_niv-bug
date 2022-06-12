{ config, pkgs, ... }: {
  system.stateVersion = "22.05";

  # minimal config required for the rebuild to work
  fileSystems."/" = {
    device = "/dev/disk/by-label/nixos";
    fsType = "ext4";
  };

  boot.loader.grub.device = "/dev/vda";
}
