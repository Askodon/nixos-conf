{
environment.etc = let
    kdeGlobalConfigFiles = lib.attrsets.mapAttrs' (name: value: lib.attrsets.nameValuePair
    ( "xdg/${name}" ) ({source = (pkgs.formats.ini {}).generate name value; }));
  in
  kdeGlobalConfigFiles
    {
    "kglobalshortcutsrc" = (import ./kglobalshortcutsrc.nix);
    "baloofilerc" = {
      "Basic Settings" = {
        "Indexing-Enabled" = false;
      };
    };
  };
}
