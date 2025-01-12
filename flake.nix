{
	description = "My Home Manager configuration";

	inputs = {
		nixpkgs.url = "nixpkgs/nixos-24.05";
		nixpkgs-unstable.url = "nixpkgs/nixos-unstable";

		home-manager = {
			url = "github:nix-community/home-manager/release-24.05";
			inputs.nixpkgs.follows = "nixpkgs";
		};
		home-manager-unstable = {
			url = "github:nix-community/home-manager";
			inputs.nixpkgs.follows = "nixpkgs-unstable";
		};
	};

	outputs = {nixpkgs, nixpkgs-unstable, home-manager, home-manager-unstable, ...}:
	let
		lib = nixpkgs.lib;
		system = "x86_64-linux";
		pkgs = nixpkgs.legacyPackages.${system};
		pkgs-unstable = nixpkgs-unstable.legacyPackages.${system};
	in {
		homeConfigurations = {
			myprofile = home-manager.lib.homeManagerConfiguration {
				inherit pkgs;
				modules = [ ./home.nix ];
				extraSpecialArgs = {
					inherit pkgs-unstable home-manager-unstable;
				};
			};
		};
	};
}
