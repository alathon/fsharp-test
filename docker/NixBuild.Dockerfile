FROM nixorg/nix:latest
RUN nix-channel --add https://nixos.org/channels/nixos-18.03 nixpkgs
RUN nix-channel --update
