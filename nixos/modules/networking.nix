{ config, lib, pkgs, ... }:

{
	networking.firewall.enable = true;

	networking.hostName = "nixos";
	networking.networkmanager.enable = true;

	# Open ports in the firewall.
	#networking.firewall.allowedTCPPorts = [ ... ];
	#networking.firewall.allowedUDPPorts = [ ... ];
}
