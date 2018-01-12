nix-shell -p gcc pkgconfig zlib
make clean; make && mv glucose glucose-$(git log -1 --format="%h")
