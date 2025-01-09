{ config, pkgs, ... }:
{
	home.packages = [ pkgs.tmux ];

	programs.tmux = {
		enable = true;
		extraConfig = builtins.readFile ./tmux.conf;
	};
}
