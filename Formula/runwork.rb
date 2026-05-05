class Runwork < Formula
  desc "CLI for Runwork - develop, preview, and deploy Runwork apps"
  homepage "https://www.runwork.ai"
  version "0.10.2"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/runwork-ai/cli/releases/download/v0.10.2/runwork-darwin-arm64.tar.gz"
      sha256 "95aa51b86c1d3cfc9cca6b8314e8bc108eef2b56f00e5c5d8d105bbe69a8c13e"
    else
      url "https://github.com/runwork-ai/cli/releases/download/v0.10.2/runwork-darwin-x64.tar.gz"
      sha256 "6d41c338e7646775ae260f3613cdb69ff41575fe956f74107b7184274cc77529"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/runwork-ai/cli/releases/download/v0.10.2/runwork-linux-arm64.tar.gz"
      sha256 "aa7bfe3492e8ea7a9f886a175dbac1597fd5f6ef7220665ae15c17666c31c7e0"
    else
      url "https://github.com/runwork-ai/cli/releases/download/v0.10.2/runwork-linux-x64.tar.gz"
      sha256 "cb98e52744a8b17ebd2d000292abbdacacd30239e44a733a6be8a67ea3bd5d96"
    end
  end

  def install
    bin.install Dir["runwork-*"].first => "runwork"
  end

  test do
    assert_match "runwork", shell_output("#{bin}/runwork --version")
  end
end
