{ config, lib, pkgs, ... }:

{
	# Enable polkit
	security.polkit.enable = true;

	services = {
		# Enable SSH service
		openssh.enable = true;

		# Enable flatpak
		flatpak.enable = true;

		# Enable the X11 windowing system.
		xserver.enable = true;

		# Set sddm as the display manager
		displayManager.sddm.enable = true;

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
