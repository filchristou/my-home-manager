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

		shellAliases = {
			"gits" = "git status -s";
			"gitlog" = "git log --graph --oneline --decorate --all";
		};

		plugins = [
			{
				name = "fzf.fish";
				src = pkgs.fishPlugins.fzf-fish.src;
			}
		];
	};
}
