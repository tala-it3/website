with (import <nixpkgs> {}); let

  # Website name
  websiteName = "Tala";

  # Custom run environment
  customEnvironment = bundlerEnv {
    name = websiteName;
    inherit ruby;
    gemfile = ./Gemfile;
    lockfile = ./Gemfile.lock;
    gemset = ./gemset.nix;
  };

in
  stdenv.mkDerivation {
    name = websiteName;
    buildInputs = [ customEnvironment ruby ];
    shellHook = ''
      exec ${customEnvironment}/bin/jekyll serve --watch --livereload
    '';
  }