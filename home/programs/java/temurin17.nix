{ pkgs }: 

let 
  name = "temurin17";
  url = "https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.9%2B9/OpenJDK17U-jdk_x64_linux_hotspot_17.0.9_9.tar.gz";
  sha256 = "7b175dbe0d6e3c9c23b6ed96449b018308d8fc94a5ecd9c0df8b8bc376c3c18a";
in
pkgs.stdenv.mkDerivation {
  name = name;
  src = pkgs.fetchurl {
    url = url;
    sha256 = sha256;
  };
  installPhase = ''
    mkdir -p $out/${name}
    mv * $out/${name}
  '';
}
