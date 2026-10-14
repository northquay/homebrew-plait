class Plait < Formula
  desc "small command line utility"
  homepage "https://github.com/northquay/homebrew-plait"
  url "https://github.com/northquay/homebrew-plait/releases/download/v0.1.0-44f2622c/plait"
  version "0.1.0"
  sha256 "44f2622c85e04952dcc67800df9576765b5c71e0bcbeddcb549f32d2433ad0fc"

  def install
    bin.install "plait"
  end
end
