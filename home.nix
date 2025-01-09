{ lib, pkgs, ...}:
{
	home = {
		packages = with pkgs; [
			htop
		];

		username = "pakis";
		homeDirectory = "/home/pakis";

		stateVersion = "23.11";
	};

	programs.home-manager.enable = true;

	# more complex  packages
	imports = [
		./packages/tmux/tmux.nix
	];
}
