[
  {
    host = "thinkbook";
    user = "eumene";
    extraOSModules = [ ./thinkbook/os.nix ];
    extraHomeModules = [ ./thinkbook/home.nix ];
    extraHomeArgs = {
      nixosVersion = "unstable";
      homeManagerVersion = "master";
    };
  }
]
