# nix-shell -p gcc pkgconfig zlib
{ stdenv, fetchurl, zlib }:
stdenv.mkDerivation rec {
  name = "glucose3";
  version = "1.0";

  src = fetchurl {
   url = "https://github.com/shnarazk/glucose/archive/version3.0.tar.gz";
  };
  buildInputs = [ zlib ];

  sourceRoot = "simp";
  makeFlags = [ "" ];
  installPhase = ''
    install -Dm0755 glucose $out/bin/glucose3
    mkdir -p "$out/share/doc/${name}/"
    install -Dm0755 ../{LICENCE,README,Changelog} "$out/share/doc/${name}/"
  '';

  meta = with stdenv.lib; {
    description = "Modern, parallel SAT solver (sequential version)";
    license = licenses.mit;
    platforms = platforms.unix;
  };
}

