class Runwork < Formula
  desc "CLI for Runwork - develop, preview, and deploy Runwork apps"
  homepage "https://www.runwork.ai"
  version "0.23.0"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/runwork-ai/cli/releases/download/v0.23.0/runwork-darwin-arm64.tar.gz"
      sha256 "05d94f2880caf4918cde67d29dc8215edb50587bf14cbe239d8cf8627f6557e9"
    else
      url "https://github.com/runwork-ai/cli/releases/download/v0.23.0/runwork-darwin-x64.tar.gz"
      sha256 "3c5331da5c55fb79d24fa1f1a6a2f100e50212ec5e2aae3aea8c6dca6f8c37cd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/runwork-ai/cli/releases/download/v0.23.0/runwork-linux-arm64.tar.gz"
      sha256 "e9e50e82e9764c2462f0f7e41d3a6622dffc7380f5b6708a7e603e962d6b77ef"
    else
      url "https://github.com/runwork-ai/cli/releases/download/v0.23.0/runwork-linux-x64.tar.gz"
      sha256 "07e9c5e575ad161e3a64795ff6adb8791e5867dd830210fd5bc898f1f8911e50"
    end
  end

  def install
    bin.install Dir["runwork-*"].first => "runwork"
  end

  test do
    assert_match "runwork", shell_output("#{bin}/runwork --version")
  end
end
