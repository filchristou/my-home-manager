{ lib, pkgs, ...}:
{
	home = {
		packages = with pkgs; [
			hello
		];

		username = "pakis";
		homeDirectory = "/home/pakis";

		stateVersion = "23.11";
	};
}
