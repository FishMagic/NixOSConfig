{pkgs, ...}:

{
    home.packages = with pkgs;
    [        
        python39
        python39Packages.pip
        python39Packages.virtualenv
        cudaPackages.cudatoolkit
        zlib
    ];

    home.sessionVariables = {
        LD_LIBRARY_PATH = "$LD_LIBRARY_PATH;${pkgs.python39}/lib;${pkgs.cudaPackages.cudatoolkit}/lib;${pkgs.zlib}/lib";
    };
}