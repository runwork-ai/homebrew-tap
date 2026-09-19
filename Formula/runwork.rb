class Runwork < Formula
  desc "CLI for Runwork - develop, preview, and deploy Runwork apps"
  homepage "https://www.runwork.ai"
  version "0.28.0"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/runwork-ai/cli/releases/download/v0.28.0/runwork-darwin-arm64.tar.gz"
      sha256 "cf0fc49175d1cc95aa42edd9de4db647ffbcb3ba8bf45247a7bc8c154f0424b3"
    else
      url "https://github.com/runwork-ai/cli/releases/download/v0.28.0/runwork-darwin-x64.tar.gz"
      sha256 "518e6021300edaf432ab165e3e8baa5b4348268272c6e48351fbd8cbdd447334"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/runwork-ai/cli/releases/download/v0.28.0/runwork-linux-arm64.tar.gz"
      sha256 "244aaf47b347482068d787a2797c51beaaea756b5526aee83fb7075a3fbe4d7b"
    else
      url "https://github.com/runwork-ai/cli/releases/download/v0.28.0/runwork-linux-x64.tar.gz"
      sha256 "81ba5f1524dfef036229370cc8ed22490263b5654aed83fab5c14e4d4a76a51e"
    end
  end

  def install
    bin.install Dir["runwork-*"].first => "runwork"
  end

  test do
    assert_match "runwork", shell_output("#{bin}/runwork --version")
  end
end
