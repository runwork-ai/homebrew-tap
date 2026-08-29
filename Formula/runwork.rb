class Runwork < Formula
  desc "CLI for Runwork - develop, preview, and deploy Runwork apps"
  homepage "https://www.runwork.ai"
  version "0.25.3"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/runwork-ai/cli/releases/download/v0.25.3/runwork-darwin-arm64.tar.gz"
      sha256 "ab22eb0f3ad941e6f3f86842c0b609abb5cbb95c20e8adc45d6105b92c1a346c"
    else
      url "https://github.com/runwork-ai/cli/releases/download/v0.25.3/runwork-darwin-x64.tar.gz"
      sha256 "db44cb4d81a31133062df66ea8b0f58fd96afb2fff6c93e6ec71400c2f707764"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/runwork-ai/cli/releases/download/v0.25.3/runwork-linux-arm64.tar.gz"
      sha256 "f7576939ba6219aa8877846709308d7b8b7115da47867475620ca9a99ab10072"
    else
      url "https://github.com/runwork-ai/cli/releases/download/v0.25.3/runwork-linux-x64.tar.gz"
      sha256 "22d0f6594ee90d4a8f35c461ce2f994f1eb8e7b46f6ef508fad3158dd487c0a8"
    end
  end

  def install
    bin.install Dir["runwork-*"].first => "runwork"
  end

  test do
    assert_match "runwork", shell_output("#{bin}/runwork --version")
  end
end
