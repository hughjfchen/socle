{ self, pkgs, ... }: rec {
  u-boot-orangepi-5 = u-boot-orangepi-5-2024_01;
  u-boot-orangepi-5-plus = u-boot-orangepi-5-plus-2024_01;

  u-boot-orangepi-5-plus-2024_01 = u-boot-orangepi-rk35xx {
    defconfig = "orangepi-5-plus-rk3588_defconfig";
  };
  u-boot-orangepi-5-2024_01 = u-boot-orangepi-rk35xx {
    defconfig = "orangepi-5-rk3588s_defconfig";
  };

  u-boot-orangepi-rk35xx = (pkgs.callPackage ./uboot.nix {});

  linux-xunlong-rk35xx = linux-xunlong-rk35xx-6_1;
  linux-xunlong-rk35xx-6_1 = (pkgs.callPackage ./linux/xunlong.nix {});

  orangepi-firmware = orangepi-firmware-2024_01_24;
  orangepi-firmware-2024_01_24 = (pkgs.callPackage ./orangepi-firmware.nix {});
}