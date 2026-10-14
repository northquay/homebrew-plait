class Plait < Formula
  desc "small command line utility"
  homepage "https://github.com/northquay/homebrew-plait"
  url "https://github.com/northquay/homebrew-plait/releases/download/v0.1.0-2f34f9cb/plait"
  version "0.1.0"
  sha256 "2f34f9cb9fc2b71001932c4ae5359da84dc2791e113a6678374c8d70234693e4"

  def install
    bin.install "plait"
  end

  # Started by brew services, which writes its own launchd job, so the binary's
  # own installer is used only to fetch the certs (setup -no-install).  This
  # block carries no address and no paths on purpose: the binary reads
  # config.json from its install directory.
  service do
    run [opt_bin/"plait"]
    keep_alive true
    process_type :background
  end
end
