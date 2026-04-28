class Runwork < Formula
  desc "CLI for Runwork - develop, preview, and deploy Runwork apps"
  homepage "https://www.runwork.ai"
  version "0.9.1"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/runwork-ai/cli/releases/download/v0.9.1/runwork-darwin-arm64.tar.gz"
      sha256 "fbe4395b761095996b4099b97316147ca70bfa14ca4146f7caf07fe906ced0ea"
    else
      url "https://github.com/runwork-ai/cli/releases/download/v0.9.1/runwork-darwin-x64.tar.gz"
      sha256 "d6a264ac67c1f5badc473245e89c27d320b53d33c86dbd9f1901564d97bf3b12"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/runwork-ai/cli/releases/download/v0.9.1/runwork-linux-arm64.tar.gz"
      sha256 "67499ec75c41a8815bd41b6891258a94d9d677a11e8832d6fa0aad7575dab7ed"
    else
      url "https://github.com/runwork-ai/cli/releases/download/v0.9.1/runwork-linux-x64.tar.gz"
      sha256 "c2b6896bc53babc48d3834d32afebe2847e247aea4974bede73f6065a196b52b"
    end
  end

  def install
    bin.install Dir["runwork-*"].first => "runwork"
  end

  test do
    assert_match "runwork", shell_output("#{bin}/runwork --version")
  end
end
