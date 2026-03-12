class Runwork < Formula
  desc "CLI for Runwork - develop, preview, and deploy Runwork apps"
  homepage "https://www.runwork.ai"
  version "0.2.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/runwork-ai/cli/releases/download/v0.2.3/runwork-darwin-arm64.tar.gz"
      sha256 "76a5ddb0361a3b3b270d14f58a33b9555bcedb6e96e922bc912e3fd241d093e3"
    else
      url "https://github.com/runwork-ai/cli/releases/download/v0.2.3/runwork-darwin-x64.tar.gz"
      sha256 "5ec0aeaec734e8d58062c447f2373e55abe2aabbed97a90ca89a38db2a056cb6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/runwork-ai/cli/releases/download/v0.2.3/runwork-linux-arm64.tar.gz"
      sha256 "b76847aaaee77f13d8e5d6c2dc79e6637fbc77a5037b8bc6fdb1a5fc3a5c8dcf"
    else
      url "https://github.com/runwork-ai/cli/releases/download/v0.2.3/runwork-linux-x64.tar.gz"
      sha256 "95538149b41289acc8e72f196a986e18c3c6fe399821ecd66873b8bd878abb26"
    end
  end

  def install
    bin.install Dir["runwork-*"].first => "runwork"
  end

  test do
    assert_match "runwork", shell_output("#{bin}/runwork --version")
  end
end
