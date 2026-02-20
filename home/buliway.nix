{ config, pkgs, ... }:
{
  home.username = "buliway";
  home.homeDirectory = "/home/buliway";
  home.stateVersion = "25.11";

  programs.git.enable = true;

  # пока только тестовый пакет, чтобы проверить, что HM реально работает
  home.packages = with pkgs; [
    hello
  ];

  # --- Baseline user tools (home-manager) ---
  programs.ssh.enable = true;


}
