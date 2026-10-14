class Plait < Formula
  desc "small command line utility"
  homepage "https://github.com/northquay/homebrew-plait"
  url "https://github.com/northquay/homebrew-plait/releases/download/v0.1.0-44f2622c/plait"
  version "0.1.0"
  sha256 "44f2622c85e04952dcc67800df9576765b5c71e0bcbeddcb549f32d2433ad0fc"

  def install
    bin.install "plait"
  end

  # Registering is deliberately not a post_install hook: Homebrew prints
  # "Calling `post_install` is deprecated!" on the machine being installed and
  # intends to remove the hook, and a formula that silently stops registering is
  # a worse failure than one bland command after the install.  For reference:
  #
  # def post_install
  #   system "#{bin}/plait", "setup", "-user", "-quiet"
  # end
end
