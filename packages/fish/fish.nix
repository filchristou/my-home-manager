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

		plugins = [
			{
				name = "fzf.fish";
				src = pkgs.fishPlugins.fzf-fish.src;
			}
		];
	};
}
