with import <nixpkgs> {};

let
  version = "1.0.2";
in
buildGoModule rec {
  name = "themekit-${version}";
  inherit version;
  src = fetchFromGitHub {
    owner = "Shopify";
    repo = "themekit";
    rev = "v${version}";
    sha256 = "1fxvkh36hcp909l3sdx6g12xfq18hhriyddyqzypsc2b7q6vn2qb";
  };
  vendorSha256 = "1b1wgfip62rdprpb9r04bbbgd2m8941xp5zwfspzbrqczfljym4z";
}
