{ config, lib, pkgs, ... }:

{

	users.users = {
		grass = {
			isNormalUser = true;
			extraGroups = [ "wheel" ];
			packages = with pkgs; [  ];
		};
	};

}
