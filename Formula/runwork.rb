class Runwork < Formula
  desc "CLI for Runwork - develop, preview, and deploy Runwork apps"
  homepage "https://www.runwork.ai"
  version "0.16.0"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/runwork-ai/cli/releases/download/v0.16.0/runwork-darwin-arm64.tar.gz"
      sha256 "793c53a3c4bc8519da9d95b0c9cb63978ac2e7ef6704f39fb723803dcd0ea7c6"
    else
      url "https://github.com/runwork-ai/cli/releases/download/v0.16.0/runwork-darwin-x64.tar.gz"
      sha256 "8e560f9d613a23fa48ea03ca67e75caff961aef36a54527cefe038d8c2807bf2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/runwork-ai/cli/releases/download/v0.16.0/runwork-linux-arm64.tar.gz"
      sha256 "672fddcb352637f0c84d3e49fe38d5cf2f63305951f51f36dcf6b085db156cbb"
    else
      url "https://github.com/runwork-ai/cli/releases/download/v0.16.0/runwork-linux-x64.tar.gz"
      sha256 "9a331ff607cd2004b443afa0010f883036565cb017d2f1edbff0f85873088007"
    end
  end

  def install
    bin.install Dir["runwork-*"].first => "runwork"
  end

  test do
    assert_match "runwork", shell_output("#{bin}/runwork --version")
  end
end
