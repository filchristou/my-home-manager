{ config, pkgs, pkgs-unstable, home-manager-unstable, ... }:
{
	home.packages = [ pkgs-unstable.zellij ];

	xdg.configFile."zellij/config.kdl".source = ./config.kdl;

	# programs.zellij = {
	# 	enable = true;
	# };
}
