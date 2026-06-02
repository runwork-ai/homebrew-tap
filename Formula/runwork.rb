class Runwork < Formula
  desc "CLI for Runwork - develop, preview, and deploy Runwork apps"
  homepage "https://www.runwork.ai"
  version "0.13.4"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/runwork-ai/cli/releases/download/v0.13.4/runwork-darwin-arm64.tar.gz"
      sha256 "3847b2c6b8ccf2d72e15dcff732e0cc19fd9ca1776d0b242b814b81db7e3b62e"
    else
      url "https://github.com/runwork-ai/cli/releases/download/v0.13.4/runwork-darwin-x64.tar.gz"
      sha256 "3452b5a92cdf65f65914296050f1118f27694ce7f3301f8a17d260e4cd4334da"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/runwork-ai/cli/releases/download/v0.13.4/runwork-linux-arm64.tar.gz"
      sha256 "99d01d992b5aa1bc052bc431888068c3d3b3233cc5b7e3baf54c1a5176762a56"
    else
      url "https://github.com/runwork-ai/cli/releases/download/v0.13.4/runwork-linux-x64.tar.gz"
      sha256 "7798613b61eec102eadb1db37614902012fb3c898de699a1d3febee70d1ec1eb"
    end
  end

  def install
    bin.install Dir["runwork-*"].first => "runwork"
  end

  test do
    assert_match "runwork", shell_output("#{bin}/runwork --version")
  end
end
