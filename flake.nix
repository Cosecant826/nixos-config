{
    description = "Eumene's NixOS Flake Configuration";

    outputs = { self, nixpkgs, ... }@inputs:
    inputs.flake-parts.lib.mkFlake { inherit inputs; } {
        systems = [ "x86_64-linux" ];
        imports = [
            ./hosts
            # inputs.treefmt-nix.flakeModules
            { _module.args = { inherit inputs self nixpkgs; }; }
        ];
        flake = {
            # homeManagerModules = import ./modules/home-manager;
            homeManagerModules = {};
        };
        # perSystem = {
        #     { pkgs, ... }:
        #     {
        #         # packages = import ./pkgs { inherit pkgs; };
        #     };
        # };
    };

    inputs = {
        nixpkgs-stable.url = "github:NixOS/nixpkgs/nixos-25.05";
        nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable-small";
        home-manager = {
            url = "github:nix-community/home-manager/master";
            inputs.nixpkgs.follows = "nixpkgs";
        };
        flake-parts.url = "github:hercules-ci/flake-parts";
        niri.url = "github:sodiboo/niri-flake";
        # treefmt-nix.url = "github:numtide/treefmt-nix";
        ghostty.url = "github:ghostty-org/ghostty";
        nixGL.url = "github:nix-community/nixGL";
        quickshell = {
            url = "git+https://git.outfoxxed.me/quickshell/quickshell";
            inputs.nixpkgs.follows = "nixpkgs";
        };
        noctalia-shell = {
            url = "github:noctalia-dev/noctalia-shell";
            inputs.quickshell.follows = "quickshell";
        };
    };
}