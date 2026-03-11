class Runwork < Formula
  desc "CLI for Runwork - develop, preview, and deploy Runwork apps"
  homepage "https://www.runwork.ai"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/runwork-ai/cli/releases/download/v0.2.0/runwork-darwin-arm64.tar.gz"
      sha256 "547d6acd5a48faec1bf8c8688fc64d29269ef11c6d89422408f1a91398341ffc"
    else
      url "https://github.com/runwork-ai/cli/releases/download/v0.2.0/runwork-darwin-x64.tar.gz"
      sha256 "6970ac5e7fb0313f6fd96300cbf80b09df8b5d2844bee32889adbea40d27f0d3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/runwork-ai/cli/releases/download/v0.2.0/runwork-linux-arm64.tar.gz"
      sha256 "63d493cbfa014271c2732d878b594488acfbab461ae13f698f4b76d863e65d8e"
    else
      url "https://github.com/runwork-ai/cli/releases/download/v0.2.0/runwork-linux-x64.tar.gz"
      sha256 "2016d81b43b7da1d2a40ef91ab4204521bffdf233e07eba4464943282397af0e"
    end
  end

  def install
    bin.install Dir["runwork-*"].first => "runwork"
  end

  test do
    assert_match "runwork", shell_output("#{bin}/runwork --version")
  end
end
