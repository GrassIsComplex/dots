{ config, lib, pkgs, ... }:

{
	hardware.bluetooth.enable = true; # enables support for Bluetooth
	hardware.bluetooth.powerOnBoot = true;
	
	# Enable polkit
	security.polkit.enable = true;

	services = {
		# Enable SSH service
		openssh.enable = true;

		# Enable flatpak
		flatpak.enable = true;

		# Enable the X11 windowing system.
		xserver.enable = true;

		# Mount, trash, and other functionalities
		gvfs.enable = true;
		
		# Thumbnail support for images
		tumbler.enable = true;

		# Set sddm as the display manager
		displayManager.ly.enable = true;

		# Bluetooth
		blueman.enable = true;

		# Configure keymap in X11
		xserver.xkb.layout = "us";
		xserver.xkb.options = "caps:escape";

		# Enable CUPS to print documents.
		printing.enable = true;

		# Enable sound.
		pipewire = {
			enable = true;
			pulse.enable = true;
		};

		# Enable touchpad support
		libinput.enable = true;
	};
}
