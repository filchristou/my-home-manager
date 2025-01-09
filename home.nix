{ lib, pkgs, ...}:
{
	home = {
		packages = with pkgs; [
			hello
			wezterm
			htop
			tmux
		];

		username = "pakis";
		homeDirectory = "/home/pakis";

		stateVersion = "23.11";

		file = {
			"hello.txt".text = "Hello, world!";
		};

	};

	programs.home-manager.enable = true;
}
