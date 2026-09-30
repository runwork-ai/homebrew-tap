class Runwork < Formula
  desc "CLI for Runwork - develop, preview, and deploy Runwork apps"
  homepage "https://www.runwork.ai"
  version "0.32.0"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/runwork-ai/cli/releases/download/v0.32.0/runwork-darwin-arm64.tar.gz"
      sha256 "e35527ef6c0471733ea195bb11daa5a16bbac1c6eb3e80ccc95609865c77f556"
    else
      url "https://github.com/runwork-ai/cli/releases/download/v0.32.0/runwork-darwin-x64.tar.gz"
      sha256 "36deb823f18f7903575b0571db2fe8ca5cc6804d3f3db998c56c5116cd1ecdea"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/runwork-ai/cli/releases/download/v0.32.0/runwork-linux-arm64.tar.gz"
      sha256 "a1b79ec5e4dcba0f2645728dcf8d551e2e0a51b346cc5cbcb5507f7cab154c8c"
    else
      url "https://github.com/runwork-ai/cli/releases/download/v0.32.0/runwork-linux-x64.tar.gz"
      sha256 "164538a88ae6ac96f70478d2d41bd6f79f2412429c4edae5195897badc97c1ba"
    end
  end

  def install
    bin.install Dir["runwork-*"].first => "runwork"
  end

  test do
    assert_match "runwork", shell_output("#{bin}/runwork --version")
  end
end
