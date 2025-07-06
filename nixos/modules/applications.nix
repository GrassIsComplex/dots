{ config, lib, pkgs, ... }:

{
	hardware.graphics.enable32Bit = true;
	nixpkgs.config.allowUnfree = true;

	programs.steam = {
		enable = true;
		remotePlay.openFirewall = true; # Open ports in the firewall for Steam Remote Play
		dedicatedServer.openFirewall = true; # Open ports in the firewall for Source Dedicated Server
		localNetworkGameTransfers.openFirewall = true; # Open ports in the firewall for Steam Local Network Game Transfers
	};
	programs.firefox = {
		enable = true;
		package = pkgs.librewolf;
	};
	programs.hyprland = {
		enable = true;
		xwayland.enable = true;
	};
	environment.systemPackages = with pkgs; [
		pkgs.gamescope
		wine
		lutris
		pulseaudio
		pkgs.brightnessctl
		pkgs.hyprshot
		pkgs.nix-search-cli
		pkgs.kitty
		pkgs.rustup
		pkgs.blender
		pkgs.discord
		pkgs.neovim
		pkgs.waybar
		pkgs.wofi
		pkgs.pwvucontrol
		pkgs.hyprpolkitagent
		pkgs.wl-clipboard
		pkgs.xfce.thunar
		pkgs.xfce.thunar-volman
		pkgs.nwg-look
		pkgs.papirus-icon-theme
		pkgs.kanagawa-gtk-theme
		pkgs.gvfs
		pkgs.udiskie
		neofetch
		htop
		git 
		tree
		vim
		wget
	];
}
