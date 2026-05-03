class Runwork < Formula
  desc "CLI for Runwork - develop, preview, and deploy Runwork apps"
  homepage "https://www.runwork.ai"
  version "0.9.4"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/runwork-ai/cli/releases/download/v0.9.4/runwork-darwin-arm64.tar.gz"
      sha256 "723743e584bed4e68e22832d397efed9ae441d869009da3abe1e5faeeeac3da3"
    else
      url "https://github.com/runwork-ai/cli/releases/download/v0.9.4/runwork-darwin-x64.tar.gz"
      sha256 "d75b671342569bb8076318a5411214d756b346427f134a0623d4a2e2163bf1c2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/runwork-ai/cli/releases/download/v0.9.4/runwork-linux-arm64.tar.gz"
      sha256 "baeda935686108217d70fcc4fcd9097f6258c3e93b97535de38ec43406976feb"
    else
      url "https://github.com/runwork-ai/cli/releases/download/v0.9.4/runwork-linux-x64.tar.gz"
      sha256 "68ca2e5b6b34164ea209d141f5931f9c8800ed0a3758858f79be057786afdff5"
    end
  end

  def install
    bin.install Dir["runwork-*"].first => "runwork"
  end

  test do
    assert_match "runwork", shell_output("#{bin}/runwork --version")
  end
end
