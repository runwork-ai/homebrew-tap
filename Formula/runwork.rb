class Runwork < Formula
  desc "CLI for Runwork - develop, preview, and deploy Runwork apps"
  homepage "https://www.runwork.ai"
  version "0.34.0"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/runwork-ai/cli/releases/download/v0.34.0/runwork-darwin-arm64.tar.gz"
      sha256 "7d415ca5c25ea9fe3abdbf245ed7f1b197f73ee25f7533e69a409142bccebf55"
    else
      url "https://github.com/runwork-ai/cli/releases/download/v0.34.0/runwork-darwin-x64.tar.gz"
      sha256 "d42abb2400d26ccae52e3448ab71b678a09dc7b792d0a2456cb6167b9e4339d2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/runwork-ai/cli/releases/download/v0.34.0/runwork-linux-arm64.tar.gz"
      sha256 "72ca3bcf5f7598314c56cb9c2e6a0060d3de113a80219dd9d290cd4edeca4971"
    else
      url "https://github.com/runwork-ai/cli/releases/download/v0.34.0/runwork-linux-x64.tar.gz"
      sha256 "383e5e8a5ebe1b18c6a4446f4c75fea8b55b2462606b3ce58df179d006f79fcf"
    end
  end

  def install
    bin.install Dir["runwork-*"].first => "runwork"
  end

  test do
    assert_match "runwork", shell_output("#{bin}/runwork --version")
  end
end
