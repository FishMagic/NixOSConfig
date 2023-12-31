{ pkgs }: 

let 
  name = "temurin8";
  url = "https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u392-b08/OpenJDK8U-jdk_x64_linux_hotspot_8u392b08.tar.gz";
  sha256 = "15d091e22aa0cad12a241acff8c1634e7228b9740f8d19634250aa6fe0c19a33";
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
