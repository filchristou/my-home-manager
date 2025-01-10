{ config, pkgs, ... }:
{
	home.packages = [ pkgs.helix ];

	programs.helix = {
		enable = true;
		defaultEditor = true;
	};
}
