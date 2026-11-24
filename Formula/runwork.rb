class Runwork < Formula
  desc "CLI for Runwork - develop, preview, and deploy Runwork apps"
  homepage "https://www.runwork.ai"
  version "0.38.0"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/runwork-ai/cli/releases/download/v0.38.0/runwork-darwin-arm64.tar.gz"
      sha256 "2fc1d30c5071f6250c64bffd02fbaf0ca04d8e907098380b5c0989989c731b3c"
    else
      url "https://github.com/runwork-ai/cli/releases/download/v0.38.0/runwork-darwin-x64.tar.gz"
      sha256 "6173925c4c93e207e9f0c9ca096746bcc56bdcf092e96b81e1a0f39d45579994"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/runwork-ai/cli/releases/download/v0.38.0/runwork-linux-arm64.tar.gz"
      sha256 "9e81471fa5e7a240c23909604f617a1e6d55bdea0ac6dbf09d7899aba303d618"
    else
      url "https://github.com/runwork-ai/cli/releases/download/v0.38.0/runwork-linux-x64.tar.gz"
      sha256 "d73035f983b48c6497bd99c454229fb220bcc563a79e86d8b3ab4d1b41de2758"
    end
  end

  def install
    bin.install Dir["runwork-*"].first => "runwork"
  end

  test do
    assert_match "runwork", shell_output("#{bin}/runwork --version")
  end
end
