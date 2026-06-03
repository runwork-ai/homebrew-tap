class Runwork < Formula
  desc "CLI for Runwork - develop, preview, and deploy Runwork apps"
  homepage "https://www.runwork.ai"
  version "0.14.0"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/runwork-ai/cli/releases/download/v0.14.0/runwork-darwin-arm64.tar.gz"
      sha256 "196af1abfb2a694c7906088737f4ee95c69ebda32cc33c33ca90eea0c8ea297d"
    else
      url "https://github.com/runwork-ai/cli/releases/download/v0.14.0/runwork-darwin-x64.tar.gz"
      sha256 "d0c6a7a54ba6a3cbfa739beb32e93a25e6b1fab80c5c4a7dc058ff807bf6bf85"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/runwork-ai/cli/releases/download/v0.14.0/runwork-linux-arm64.tar.gz"
      sha256 "f76cacac66686b85c37f4509c3b9b44ad7f4ff390083e0efa874a4fdfa1d529d"
    else
      url "https://github.com/runwork-ai/cli/releases/download/v0.14.0/runwork-linux-x64.tar.gz"
      sha256 "9f810e05042320a968075b2c9019e6d187b44f3f2a314124da2ab9718c18a5b0"
    end
  end

  def install
    bin.install Dir["runwork-*"].first => "runwork"
  end

  test do
    assert_match "runwork", shell_output("#{bin}/runwork --version")
  end
end
