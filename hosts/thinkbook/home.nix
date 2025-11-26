{
  monitors = {
    "eDP-1" = {
      isMain = true;
      scale = 1.5;
      mode = {
        width = 2560;
        height = 1600;
        refresh = 120.0;
      };
      position = {
        x = 0;
        y = 0;
      };
      rotation = 0;
      focus-at-startup = true;
    };
    "HDMI-A-1" = {
      scale = 1.25;
      mode = {
        width = 2560;
        height = 1440;
        refresh = 144.0;
      };
      position = {
        x = 2560/1.5;
        y = 0;
      };
      rotation = 0;
    };
  };
  home.stateVersion = "25.05";
}
