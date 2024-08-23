{ pkgs, ... }:
{
  programs.wezterm = {
  enable = true;
  enableZshIntegration = true;
  enableBashIntegration = true;
  extraConfig = ''
  return {
  font = wezterm.font("Fira Code"),
  font_size = 11.0,
  hide_tab_bar_if_only_one_tab = true,
  default_prog = { "zsh", "--login", "-c", "zellij options --disable-mouse-mode" },
  window_background_opacity = 0.7,
  color_scheme = 'Blue Matrix',
  window_close_confirmation = 'NeverPrompt',
  }
  '';
};
}