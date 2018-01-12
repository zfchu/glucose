nix-shell -p gcc pkgconfig zlib
(cd simp;  make clean; make && mv glucose glucose-$(git log -1 --format="%h"))
