class Runwork < Formula
  desc "CLI for Runwork - develop, preview, and deploy Runwork apps"
  homepage "https://www.runwork.ai"
  version "0.36.0"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/runwork-ai/cli/releases/download/v0.36.0/runwork-darwin-arm64.tar.gz"
      sha256 "bfacc242a748b3dfd5672b752c1fd70d68024e6b424324862f232668568085de"
    else
      url "https://github.com/runwork-ai/cli/releases/download/v0.36.0/runwork-darwin-x64.tar.gz"
      sha256 "1ef5eab4ed6cabd33e757c9dd7c4b3740d9fa079d63c29c8c71dda889c5e1269"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/runwork-ai/cli/releases/download/v0.36.0/runwork-linux-arm64.tar.gz"
      sha256 "8913589e647566e5df63188588346534e2a47085f0b1e154b09b167a2a214c88"
    else
      url "https://github.com/runwork-ai/cli/releases/download/v0.36.0/runwork-linux-x64.tar.gz"
      sha256 "2737d5d05112c399db6f274fab5467c9cbd24ce397a642bf4dacc90ba5acc95c"
    end
  end

  def install
    bin.install Dir["runwork-*"].first => "runwork"
  end

  test do
    assert_match "runwork", shell_output("#{bin}/runwork --version")
  end
end
