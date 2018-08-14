with (import <nixpkgs> {});

mkShell {
  buildInputs = [
    # Tooling
    (emacsWithPackages (epkgs: with epkgs; [
      # buttercup # If added here cask won't install it and then it wont work
      cask
      cl-lib
      request
      undercover
    ]))

    # emacsPackages.buttercup # Needs to be added in nixpkgs so we can use the tool
    emacsPackages.cask
    gnumake

    # Libraries
    emacsPackagesNg.request
  ];
}
