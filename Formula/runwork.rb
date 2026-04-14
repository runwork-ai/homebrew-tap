class Runwork < Formula
  desc "CLI for Runwork - develop, preview, and deploy Runwork apps"
  homepage "https://www.runwork.ai"
  version "0.8.2"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/runwork-ai/cli/releases/download/v0.8.2/runwork-darwin-arm64.tar.gz"
      sha256 "7c5122d250a7e453e5e76f1d0f3f56494c8f1f68c3d3c82cd6ed10ae87a75bf9"
    else
      url "https://github.com/runwork-ai/cli/releases/download/v0.8.2/runwork-darwin-x64.tar.gz"
      sha256 "823925940bedde4db119da4460aa0f3627b579bc126188199427673e46ea8386"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/runwork-ai/cli/releases/download/v0.8.2/runwork-linux-arm64.tar.gz"
      sha256 "405bd43404517c8be10c5fae63817f4ba315c4e07895354f79a425d50e751b9a"
    else
      url "https://github.com/runwork-ai/cli/releases/download/v0.8.2/runwork-linux-x64.tar.gz"
      sha256 "619550e2da18d663110e1005b3840f2e08e7f72806cc65b9bdce012dc3bc9b61"
    end
  end

  def install
    bin.install Dir["runwork-*"].first => "runwork"
  end

  test do
    assert_match "runwork", shell_output("#{bin}/runwork --version")
  end
end
