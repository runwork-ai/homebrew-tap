class Runwork < Formula
  desc "CLI for Runwork - develop, preview, and deploy Runwork apps"
  homepage "https://www.runwork.ai"
  version "0.13.1"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/runwork-ai/cli/releases/download/v0.13.1/runwork-darwin-arm64.tar.gz"
      sha256 "0b3366ea18d9c333f9053cdb624645e1ff56b99801397d4cd1f096918372d9de"
    else
      url "https://github.com/runwork-ai/cli/releases/download/v0.13.1/runwork-darwin-x64.tar.gz"
      sha256 "d3b597f89afbca7be441ec3ee98c179924711ee0136a47415d1e6afda609d958"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/runwork-ai/cli/releases/download/v0.13.1/runwork-linux-arm64.tar.gz"
      sha256 "c754bc0e60cb83d08daeaf77df23aa3fb7c7213dc69824e8766f065ef1f671e9"
    else
      url "https://github.com/runwork-ai/cli/releases/download/v0.13.1/runwork-linux-x64.tar.gz"
      sha256 "cdbdbc870fe673430bf9e36330ae05ffe2a869485ddac0f51c5466c2188ab16d"
    end
  end

  def install
    bin.install Dir["runwork-*"].first => "runwork"
  end

  test do
    assert_match "runwork", shell_output("#{bin}/runwork --version")
  end
end
