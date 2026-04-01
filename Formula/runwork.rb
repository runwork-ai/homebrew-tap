class Runwork < Formula
  desc "CLI for Runwork - develop, preview, and deploy Runwork apps"
  homepage "https://www.runwork.ai"
  version "0.6.2"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/runwork-ai/cli/releases/download/v0.6.2/runwork-darwin-arm64.tar.gz"
      sha256 "134e5b94c67f6de5e17b173455be98b18e2b1f583f6e00fb9521c173cf357513"
    else
      url "https://github.com/runwork-ai/cli/releases/download/v0.6.2/runwork-darwin-x64.tar.gz"
      sha256 "ff866e580336dd98ce10b6088aa817d60f1aaf73bcc076684a39fc926ff7a804"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/runwork-ai/cli/releases/download/v0.6.2/runwork-linux-arm64.tar.gz"
      sha256 "9dde0d8992d32360cdbfc9a2c455320e66a6a834f5e486634ae296a1bb47e7e7"
    else
      url "https://github.com/runwork-ai/cli/releases/download/v0.6.2/runwork-linux-x64.tar.gz"
      sha256 "676d26fc331560967c29180f639a1a7604770ce583ce0841a854d3666e5fe951"
    end
  end

  def install
    bin.install Dir["runwork-*"].first => "runwork"
  end

  test do
    assert_match "runwork", shell_output("#{bin}/runwork --version")
  end
end
