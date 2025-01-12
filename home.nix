{ lib, pkgs, pkgs-unstable, home-manager-unstable,  ...}:
{
	home = {
		packages = (with pkgs; [
			htop
			bat
			ripgrep
			nmap
			# pkgs-unstable.zellij
		]) 
		++
		(with pkgs-unstable; [
			# zellij
		]);

		username = "pakis";
		homeDirectory = "/home/pakis";

		stateVersion = "24.05";
	};

	programs.home-manager.enable = true;

	# more complex  packages
	imports = [
		./packages/tmux/tmux.nix
		./packages/fish/fish.nix
		./packages/helix/helix.nix
		./packages/zellij/zellij.nix
	];
}
