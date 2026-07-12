class Runwork < Formula
  desc "CLI for Runwork - develop, preview, and deploy Runwork apps"
  homepage "https://www.runwork.ai"
  version "0.17.1"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/runwork-ai/cli/releases/download/v0.17.1/runwork-darwin-arm64.tar.gz"
      sha256 "4a17f7310f7906926de01cb99c0e50c313ce44309fab8a70778ad961075aa45c"
    else
      url "https://github.com/runwork-ai/cli/releases/download/v0.17.1/runwork-darwin-x64.tar.gz"
      sha256 "f67e646434daebd299cd496cad50b9c6994c111a27b910ed6dbeb9a064c95256"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/runwork-ai/cli/releases/download/v0.17.1/runwork-linux-arm64.tar.gz"
      sha256 "1fdac73900a31e347d21ea1e7611cfe3a28e3fed22b905321de41206d7b2d198"
    else
      url "https://github.com/runwork-ai/cli/releases/download/v0.17.1/runwork-linux-x64.tar.gz"
      sha256 "16ac9977f14093c89f5080deb02f22196c1385d0d7eaa189726ae85a33382377"
    end
  end

  def install
    bin.install Dir["runwork-*"].first => "runwork"
  end

  test do
    assert_match "runwork", shell_output("#{bin}/runwork --version")
  end
end
