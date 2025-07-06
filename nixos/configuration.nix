{ config, lib, pkgs, ... }:

{
  imports =
    [
      ./hardware-configuration.nix
      ./modules
    ];

  time.timeZone = "Europe/Bucharest";
  
  system.stateVersion = "25.05";
}

