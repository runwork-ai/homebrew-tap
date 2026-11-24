class Runwork < Formula
  desc "CLI for Runwork - develop, preview, and deploy Runwork apps"
  homepage "https://www.runwork.ai"
  version "0.39.0"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/runwork-ai/cli/releases/download/v0.39.0/runwork-darwin-arm64.tar.gz"
      sha256 "739f75affa5f12680dc43f2bf310d8e75ca7043765b0754ceff9ab030a04a428"
    else
      url "https://github.com/runwork-ai/cli/releases/download/v0.39.0/runwork-darwin-x64.tar.gz"
      sha256 "aa0ae421c1f250137a7bbde3277280f406deaae6c0ded7792c89dfcd2bc22a55"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/runwork-ai/cli/releases/download/v0.39.0/runwork-linux-arm64.tar.gz"
      sha256 "cd9dbc7e718f71d16eedef86291f1f5c6f6025ea16792f9da6a87b8b7ac80393"
    else
      url "https://github.com/runwork-ai/cli/releases/download/v0.39.0/runwork-linux-x64.tar.gz"
      sha256 "efded78ec4d0a1e8d713d3e47bc8aaed442c8f674e475702ba8c7028a719fd3f"
    end
  end

  def install
    bin.install Dir["runwork-*"].first => "runwork"
  end

  test do
    assert_match "runwork", shell_output("#{bin}/runwork --version")
  end
end
