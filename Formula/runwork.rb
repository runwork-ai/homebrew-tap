class Runwork < Formula
  desc "CLI for Runwork - develop, preview, and deploy Runwork apps"
  homepage "https://www.runwork.ai"
  version "0.21.1"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/runwork-ai/cli/releases/download/v0.21.1/runwork-darwin-arm64.tar.gz"
      sha256 "56806c92886a1dfa45a5b7a949de401f29fbdf1d8a9cd8dc6daaaf2a86a77633"
    else
      url "https://github.com/runwork-ai/cli/releases/download/v0.21.1/runwork-darwin-x64.tar.gz"
      sha256 "176685b4b4d13195c6711744de95d49096a7afd786d2f7a19095478c307ff9b0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/runwork-ai/cli/releases/download/v0.21.1/runwork-linux-arm64.tar.gz"
      sha256 "8741a01294a2019a30e757c18dfb05ad428185de2b5746e27a1ca1d6d33c15dd"
    else
      url "https://github.com/runwork-ai/cli/releases/download/v0.21.1/runwork-linux-x64.tar.gz"
      sha256 "1d674de952ea0abadd38acd4c202858eca05b05df79669b7a9b87669b3a324bf"
    end
  end

  def install
    bin.install Dir["runwork-*"].first => "runwork"
  end

  test do
    assert_match "runwork", shell_output("#{bin}/runwork --version")
  end
end
