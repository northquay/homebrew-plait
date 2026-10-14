# homebrew-plait

Homebrew tap for `plait`, a small command line utility for macOS.

## Install

    brew install northquay/plait/plait

Run it once so it can set itself up:

    plait setup -user

That installs a per-user helper and keeps it running while you are logged in.
It needs no sudo and writes nothing under /Library.  Removing the package with
`brew uninstall plait` does not disturb a helper that is already running; to
update one, re-run the command above after upgrading.

## Notes

- macOS, arm64 and amd64.
- The binary is signed, so macOS may still ask you to confirm the first run.
- Releases are prebuilt; the source is not public.
