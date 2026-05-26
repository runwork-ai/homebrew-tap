class Runwork < Formula
  desc "CLI for Runwork - develop, preview, and deploy Runwork apps"
  homepage "https://www.runwork.ai"
  version "0.13.0"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/runwork-ai/cli/releases/download/v0.13.0/runwork-darwin-arm64.tar.gz"
      sha256 "926a33d9ed420c2dcbc8b7126d5c3988bf7d35defc51a50f4b4ee27f82de6628"
    else
      url "https://github.com/runwork-ai/cli/releases/download/v0.13.0/runwork-darwin-x64.tar.gz"
      sha256 "2e90eb1dc116a2c5d5d56ec85acabfc2dd7dff26a4c6a6917c7b496dfe2765c8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/runwork-ai/cli/releases/download/v0.13.0/runwork-linux-arm64.tar.gz"
      sha256 "f028da431ed7d7d75004f2277411e34bd6c77a6e7a350a69a013126b37ab7d3b"
    else
      url "https://github.com/runwork-ai/cli/releases/download/v0.13.0/runwork-linux-x64.tar.gz"
      sha256 "1e68ebb59aa271e821e94d2592c62f03a3ceb9f1974ece7b46d599e7d1acde6e"
    end
  end

  def install
    bin.install Dir["runwork-*"].first => "runwork"
  end

  test do
    assert_match "runwork", shell_output("#{bin}/runwork --version")
  end
end
