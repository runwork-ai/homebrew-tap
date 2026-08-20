class Runwork < Formula
  desc "CLI for Runwork - develop, preview, and deploy Runwork apps"
  homepage "https://www.runwork.ai"
  version "0.24.1"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/runwork-ai/cli/releases/download/v0.24.1/runwork-darwin-arm64.tar.gz"
      sha256 "f9650eddf2d3fea720b1c8973f1266811a2bb009047747325c0401eb7988da76"
    else
      url "https://github.com/runwork-ai/cli/releases/download/v0.24.1/runwork-darwin-x64.tar.gz"
      sha256 "ce17639c35f46352460593d171145614e5935928969a05c9a7250fee895c304e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/runwork-ai/cli/releases/download/v0.24.1/runwork-linux-arm64.tar.gz"
      sha256 "19745e1f2e882ff549a30503bdecc662c9157dd31d8d48812837df5de1d654d3"
    else
      url "https://github.com/runwork-ai/cli/releases/download/v0.24.1/runwork-linux-x64.tar.gz"
      sha256 "ae8712769e40dcf460b292d0680746fc79144a6569e08cdab781060a47909acb"
    end
  end

  def install
    bin.install Dir["runwork-*"].first => "runwork"
  end

  test do
    assert_match "runwork", shell_output("#{bin}/runwork --version")
  end
end
