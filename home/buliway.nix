{ config, pkgs, ... }:
{
  home.username = "buliway";
  home.homeDirectory = "/home/buliway";
  home.stateVersion = "25.11";

  programs.git.enable = true;

  # пока только тестовый пакет, чтобы проверить, что HM реально работает
  home.packages = with pkgs; [
    hello
    terminator
    git
    openssh
    wget
    curl
    ripgrep
    fzf
  ];

  # --- Baseline user tools (home-manager) ---
  programs.ssh.enable = true;



  # --- SSH: pin explicit config to avoid future default changes ---
  programs.ssh.enableDefaultConfig = false;
  programs.ssh.matchBlocks."*".extraOptions = {
    AddKeysToAgent = "yes";
    IdentityFile = "~/.ssh/id_ed25519";
  };

}
