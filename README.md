# homebrew-plait

Homebrew tap for `plait`, a small command line utility for macOS.

## Install

    brew install northquay/plait/plait

Run it once so it can fetch its certificates, then let brew run it:

    plait setup -user -no-install
    brew services start plait

`setup -user` writes the certificates under your home directory.  It needs no
sudo and writes nothing under /Library.  `brew services start` asks launchd to
run it and keep it running while you are logged in, and `brew services stop
plait` or `brew uninstall plait` undoes that.

To run it with nobody logged in, use the same two commands with `sudo`:
`sudo plait setup -no-install` and `sudo brew services start plait`.  Give the
full path to the binary under sudo.

## Notes

- macOS, arm64 and amd64.
- The binary is signed, so macOS may still ask you to confirm the first run.
- Releases are prebuilt; the source is not public.
