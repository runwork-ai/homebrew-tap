class Runwork < Formula
  desc "CLI for Runwork - develop, preview, and deploy Runwork apps"
  homepage "https://www.runwork.ai"
  version "0.20.0"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/runwork-ai/cli/releases/download/v0.20.0/runwork-darwin-arm64.tar.gz"
      sha256 "8872adac8e50bd48e59c7f4aabc052085cefa3b69af8ef4b4b40ad9525654ed7"
    else
      url "https://github.com/runwork-ai/cli/releases/download/v0.20.0/runwork-darwin-x64.tar.gz"
      sha256 "03c5a7d5d993706839d6f3b3d67275f86078cd49f7e2be0fc5250365a3e6f269"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/runwork-ai/cli/releases/download/v0.20.0/runwork-linux-arm64.tar.gz"
      sha256 "d2a93aa2fffaa5b0aaf03df8e92908534094d7ee1f0e8734805122c1dd281d66"
    else
      url "https://github.com/runwork-ai/cli/releases/download/v0.20.0/runwork-linux-x64.tar.gz"
      sha256 "0537dfa726e71709e52880c7360c611785fd25f8384e4cbfe271b36e38573d30"
    end
  end

  def install
    bin.install Dir["runwork-*"].first => "runwork"
  end

  test do
    assert_match "runwork", shell_output("#{bin}/runwork --version")
  end
end
