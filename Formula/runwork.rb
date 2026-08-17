class Runwork < Formula
  desc "CLI for Runwork - develop, preview, and deploy Runwork apps"
  homepage "https://www.runwork.ai"
  version "0.23.1"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/runwork-ai/cli/releases/download/v0.23.1/runwork-darwin-arm64.tar.gz"
      sha256 "583f5e73bae17051c9647d608ab23eb38760275037c3a299b74918bd493b9897"
    else
      url "https://github.com/runwork-ai/cli/releases/download/v0.23.1/runwork-darwin-x64.tar.gz"
      sha256 "dc2136fe16259410d7328fd5b0141ea180d60d92c8940253a5fcf8a5c34d5362"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/runwork-ai/cli/releases/download/v0.23.1/runwork-linux-arm64.tar.gz"
      sha256 "efbe2da6322a3d39420a011eef98fd43c6d922598e26f14275d33dc314909f41"
    else
      url "https://github.com/runwork-ai/cli/releases/download/v0.23.1/runwork-linux-x64.tar.gz"
      sha256 "0eae1d2d243c238865799b39e0b27c6c7d75cc6e88fa0202ca0e62165daedeb2"
    end
  end

  def install
    bin.install Dir["runwork-*"].first => "runwork"
  end

  test do
    assert_match "runwork", shell_output("#{bin}/runwork --version")
  end
end
