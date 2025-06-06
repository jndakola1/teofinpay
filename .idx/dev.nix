{pkgs}: {
  channel = "stable-24.05";
  packages = [
    pkgs.nodejs_20
    pkgs.nailgun
  ];
  idx.extensions = [
    "angular.ng-template"
  ];
 idx.previews = {
  previews = {
    web = {
      command = [
        "npx"
        "ng"
        "serve"
        "--host"
        "0.0.0.0"
        "--port"
        "${PORT}"
        "--disable-host-check"
      ];
      manager = "web";
    };
  };
};
