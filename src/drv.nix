{ lib, python3Packages }:

python3Packages.buildPythonApplication {
  pname = "niri-scratchpad";
  version = "0.0.1";
  pyproject = false;
  propagatedBuildInputs = [ ];
  dontUnpack = true;
  installPhase = "install -Dm755 ${./ns.py} $out/bin/nscratch";

  meta = {
    description = "Scratchpad support for the Niri Wayland compositor";
    homepage = "https://github.com/gvolpe/niri-scratchpad";
    license = lib.licenses.asl20;
    maintainers = with lib.maintainers; [ gvolpe ];
    mainProgram = "nscratch";
    platforms = lib.platforms.linux;
  };
}
