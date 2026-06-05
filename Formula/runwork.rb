class Runwork < Formula
  desc "CLI for Runwork - develop, preview, and deploy Runwork apps"
  homepage "https://www.runwork.ai"
  version "0.15.0"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/runwork-ai/cli/releases/download/v0.15.0/runwork-darwin-arm64.tar.gz"
      sha256 "b62871298dcc765677687b5d09f61020b7ec581b2ccfdb023704afc03b17a8f9"
    else
      url "https://github.com/runwork-ai/cli/releases/download/v0.15.0/runwork-darwin-x64.tar.gz"
      sha256 "fea5a024140a0aa447fb4de1e313de31ac04b623180d59876a514fd788ed8833"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/runwork-ai/cli/releases/download/v0.15.0/runwork-linux-arm64.tar.gz"
      sha256 "418e95c63f841a78e2a1f5deb76a2427d945ba988aab42e028f986e723339c2a"
    else
      url "https://github.com/runwork-ai/cli/releases/download/v0.15.0/runwork-linux-x64.tar.gz"
      sha256 "a2be6554f189527cdd32316414434f56bb310335278fa178593e36fce01eee51"
    end
  end

  def install
    bin.install Dir["runwork-*"].first => "runwork"
  end

  test do
    assert_match "runwork", shell_output("#{bin}/runwork --version")
  end
end
