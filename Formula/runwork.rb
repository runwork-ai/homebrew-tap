class Runwork < Formula
  desc "CLI for Runwork - develop, preview, and deploy Runwork apps"
  homepage "https://www.runwork.ai"
  version "0.18.2"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/runwork-ai/cli/releases/download/v0.18.2/runwork-darwin-arm64.tar.gz"
      sha256 "49c947674ae5d4ad997f43fe1436c0039a19cfa5fc8d8c9144a8e1a540543da0"
    else
      url "https://github.com/runwork-ai/cli/releases/download/v0.18.2/runwork-darwin-x64.tar.gz"
      sha256 "6f94567117ee46899a087f5b5233dcd3aa726a8f64aa760bdb8bc312de9b9485"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/runwork-ai/cli/releases/download/v0.18.2/runwork-linux-arm64.tar.gz"
      sha256 "ba879d73428e2fc5edc07edf3836994e6d1ff697ae1474a1e84ab17b3f54623e"
    else
      url "https://github.com/runwork-ai/cli/releases/download/v0.18.2/runwork-linux-x64.tar.gz"
      sha256 "ccf0e2e4b7b003fff5c4f7ac821eba75c6d6828876d0d575dd8209ab3aba60d8"
    end
  end

  def install
    bin.install Dir["runwork-*"].first => "runwork"
  end

  test do
    assert_match "runwork", shell_output("#{bin}/runwork --version")
  end
end
