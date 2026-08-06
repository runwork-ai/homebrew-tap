class Runwork < Formula
  desc "CLI for Runwork - develop, preview, and deploy Runwork apps"
  homepage "https://www.runwork.ai"
  version "0.18.3"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/runwork-ai/cli/releases/download/v0.18.3/runwork-darwin-arm64.tar.gz"
      sha256 "5950da21029ebdd6540173ebbb9d733a6f6dfb68b06246da696e50049d814dd1"
    else
      url "https://github.com/runwork-ai/cli/releases/download/v0.18.3/runwork-darwin-x64.tar.gz"
      sha256 "7c0713bd04c925c58825882292cb912f7027d2b12e63044684a23ac630c5e5ab"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/runwork-ai/cli/releases/download/v0.18.3/runwork-linux-arm64.tar.gz"
      sha256 "57b23b57c2081cc40b079919b0928e908dcc236acdc5a1f22199e5b7ff71dd6b"
    else
      url "https://github.com/runwork-ai/cli/releases/download/v0.18.3/runwork-linux-x64.tar.gz"
      sha256 "5c349f81182d76059a94e56e5cab3f6fa286ec04d9128688591fab21d680a9ad"
    end
  end

  def install
    bin.install Dir["runwork-*"].first => "runwork"
  end

  test do
    assert_match "runwork", shell_output("#{bin}/runwork --version")
  end
end
