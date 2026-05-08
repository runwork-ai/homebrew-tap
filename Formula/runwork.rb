class Runwork < Formula
  desc "CLI for Runwork - develop, preview, and deploy Runwork apps"
  homepage "https://www.runwork.ai"
  version "0.10.4"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/runwork-ai/cli/releases/download/v0.10.4/runwork-darwin-arm64.tar.gz"
      sha256 "b449afbe5c4c1c42beca774dc83c976d8d24a450f582d9d69c5904afe76f99aa"
    else
      url "https://github.com/runwork-ai/cli/releases/download/v0.10.4/runwork-darwin-x64.tar.gz"
      sha256 "7c8c0857ed0b4ab2f5903842f1948282d9deb26a86de1991282342cff8fc7f4d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/runwork-ai/cli/releases/download/v0.10.4/runwork-linux-arm64.tar.gz"
      sha256 "81fe3d1741a061979095b712bbe88c9a52a3835c76cad127f3d6f169ef727b5e"
    else
      url "https://github.com/runwork-ai/cli/releases/download/v0.10.4/runwork-linux-x64.tar.gz"
      sha256 "cb26ff142292574d32fc1dc8d69d6ae34bc93f9860b079a429b69898275589bb"
    end
  end

  def install
    bin.install Dir["runwork-*"].first => "runwork"
  end

  test do
    assert_match "runwork", shell_output("#{bin}/runwork --version")
  end
end
