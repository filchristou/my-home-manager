{ config, pkgs, pkgs-unstable, home-manager-unstable, ... }:
{
	home.packages = [ pkgs-unstable.zellij ];

	# programs.zellij = {
	# 	enable = true;
	# };
}
