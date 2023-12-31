{ pkgs }: 

let 
  name = "temurin11";
  url = "https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.21%2B9/OpenJDK11U-jdk_x64_linux_hotspot_11.0.21_9.tar.gz";
  sha256 = "60ea98daa09834fdd3162ca91ddc8d92a155ab3121204f6f643176ee0c2d0d5e";
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
