{ config, pkgs, ... }:
{
	home.packages = [ pkgs.fish ];

	programs.fish = {
		enable = true;

		shellInit = ''
			set PATH $PATH ~/.juliaup/bin/
		'';

		shellAbbrs = {
			"j"	= "julia";
			"z" = "zellij";
		};
	};
}
