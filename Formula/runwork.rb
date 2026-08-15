class Runwork < Formula
  desc "CLI for Runwork - develop, preview, and deploy Runwork apps"
  homepage "https://www.runwork.ai"
  version "0.22.0"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/runwork-ai/cli/releases/download/v0.22.0/runwork-darwin-arm64.tar.gz"
      sha256 "11da047bed2eb44996667268cc1e17f6dff65c30a986fa3f16f53d78406c96da"
    else
      url "https://github.com/runwork-ai/cli/releases/download/v0.22.0/runwork-darwin-x64.tar.gz"
      sha256 "af869288b3532dddde60f1643632c305ff5a998927d53f9baee9d2b5540059f6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/runwork-ai/cli/releases/download/v0.22.0/runwork-linux-arm64.tar.gz"
      sha256 "276d565cf2cbe654be3543947824dce50bd3099b99cd12f7766819ddca7c8e3c"
    else
      url "https://github.com/runwork-ai/cli/releases/download/v0.22.0/runwork-linux-x64.tar.gz"
      sha256 "ce830a3710bf8311dc44cfe9e62910b3caeaf40728140e3bbccc981e9784816d"
    end
  end

  def install
    bin.install Dir["runwork-*"].first => "runwork"
  end

  test do
    assert_match "runwork", shell_output("#{bin}/runwork --version")
  end
end
