class Runwork < Formula
  desc "CLI for Runwork - develop, preview, and deploy Runwork apps"
  homepage "https://www.runwork.ai"
  version "0.33.0"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/runwork-ai/cli/releases/download/v0.33.0/runwork-darwin-arm64.tar.gz"
      sha256 "6c3ef531ac14d82019d105a8febfcf03e154dcc73e955c8b05e264318880552e"
    else
      url "https://github.com/runwork-ai/cli/releases/download/v0.33.0/runwork-darwin-x64.tar.gz"
      sha256 "883ad6dcca33a484172aa98776cbc3a6f7471434b2e1a6b7371237c94bf4d932"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/runwork-ai/cli/releases/download/v0.33.0/runwork-linux-arm64.tar.gz"
      sha256 "f83d11fc57c202ba520420c7333237c12eb936f4c711f4c162e2177140ad31ce"
    else
      url "https://github.com/runwork-ai/cli/releases/download/v0.33.0/runwork-linux-x64.tar.gz"
      sha256 "dc11cc31ba7ad64ab9ea98d390e8c5c2a9f537c043e6889ff1daa500573bc0bd"
    end
  end

  def install
    bin.install Dir["runwork-*"].first => "runwork"
  end

  test do
    assert_match "runwork", shell_output("#{bin}/runwork --version")
  end
end
