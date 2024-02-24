# This is your home-manager configuration file
# Use this to configure your home environment (it replaces ~/.config/nixpkgs/home.nix)
{
  inputs,
  outputs,
  lib,
  config,
  pkgs,
  ...
}: {
  # You can import other home-manager modules here
  imports = [
    # If you want to use modules your own flake exports (from modules/home-manager):
    # outputs.homeManagerModules.example

    # Or modules exported from other flakes (such as nix-colors):
    # inputs.nix-colors.homeManagerModules.default

    # You can also split up your configuration and import pieces of it here:
    # ./nvim.nix
  ];

  nixpkgs = {
    # You can add overlays here
    overlays = [
      # Add overlays your own flake exports (from overlays and pkgs dir):
      outputs.overlays.additions
      outputs.overlays.modifications
      outputs.overlays.unstable-packages

      # You can also add overlays exported from other flakes:
      # neovim-nightly-overlay.overlays.default

      # Or define it inline, for example:
      # (final: prev: {
      #   hi = final.hello.overrideAttrs (oldAttrs: {
      #     patches = [ ./change-hello-to-hi.patch ];
      #   });
      # })
    ];
    # Configure your nixpkgs instance
    config = {
      # Disable if you don't want unfree packages
      allowUnfree = true;
      # Workaround for https://github.com/nix-community/home-manager/issues/2942
      allowUnfreePredicate = _: true;
    };
  };

  # TODO: Set your username
  home = {
<<<<<<< HEAD
    username = "kieeps";
    homeDirectory = "/home/kieeps";
=======
    username = "your-username";
    homeDirectory = "/home/your-username";
>>>>>>> 75e6210 (redoing everything)
  };

  # Add stuff for your user as you see fit:
  # programs.neovim.enable = true;
<<<<<<< HEAD
  home.packages = with pkgs; [
    kcalc
    firefox
    kate
    discord
    yakuake
    steam
    google-chrome
    signal-desktop
    git
    htop
    element-desktop
    cups-brother-hl1210w
    nextcloud-client
    libreoffice
    tlp
    yubico-pam
    nheko
    yubikey-manager-qt
    protonup-ng
  ];
=======
  # home.packages = with pkgs; [ steam ];
>>>>>>> 75e6210 (redoing everything)

  # Enable home-manager and git
  programs.home-manager.enable = true;
  programs.git.enable = true;

  # Nicely reload system units when changing configs
  systemd.user.startServices = "sd-switch";

  # https://nixos.wiki/wiki/FAQ/When_do_I_update_stateVersion
<<<<<<< HEAD
  home.stateVersion = "23.11";
=======
  home.stateVersion = "23.05";
>>>>>>> 75e6210 (redoing everything)
}
