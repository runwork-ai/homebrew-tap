class Runwork < Formula
  desc "CLI for Runwork - develop, preview, and deploy Runwork apps"
  homepage "https://www.runwork.ai"
  version "0.16.1"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/runwork-ai/cli/releases/download/v0.16.1/runwork-darwin-arm64.tar.gz"
      sha256 "b86e63b1179122b4edb764884c20a1357e83e7f3ca8bf59a4e65daed82aab01c"
    else
      url "https://github.com/runwork-ai/cli/releases/download/v0.16.1/runwork-darwin-x64.tar.gz"
      sha256 "84c0e1c7d7bbefd737899ffbf3f27e6d41a62eb0c263531f6fc5492cb3d2f991"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/runwork-ai/cli/releases/download/v0.16.1/runwork-linux-arm64.tar.gz"
      sha256 "d383f785e75c14361bffb851fb370122413aa0395383c3ec4ed81eccbc8f0760"
    else
      url "https://github.com/runwork-ai/cli/releases/download/v0.16.1/runwork-linux-x64.tar.gz"
      sha256 "45e54d2e284f7a53e8ca4e4e3326d5cd9b57c219c7ae95cb53068416ab431f8f"
    end
  end

  def install
    bin.install Dir["runwork-*"].first => "runwork"
  end

  test do
    assert_match "runwork", shell_output("#{bin}/runwork --version")
  end
end
