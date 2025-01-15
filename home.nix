{ lib, pkgs, pkgs-unstable, home-manager-unstable,  ...}:
let 
	username = "pakis";
in
{
	home = {
		packages = (with pkgs; [
			htop
			bat
			ripgrep
			nmap
			xclip
			fzf
			fd
			# pkgs-unstable.zellij
		]) 
		++
		(with pkgs-unstable; [
			# zellij
		]);

		inherit username;
		homeDirectory = "/home/${username}";

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


	# users.users.${username}.extraGroups = [ "docker" ];
}
