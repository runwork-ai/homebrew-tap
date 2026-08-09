class Runwork < Formula
  desc "CLI for Runwork - develop, preview, and deploy Runwork apps"
  homepage "https://www.runwork.ai"
  version "0.19.0"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/runwork-ai/cli/releases/download/v0.19.0/runwork-darwin-arm64.tar.gz"
      sha256 "eb8c1892e854f9ccade5dd14211c73cc6324bb20c0440d2d53b5059d6daa6651"
    else
      url "https://github.com/runwork-ai/cli/releases/download/v0.19.0/runwork-darwin-x64.tar.gz"
      sha256 "93b7cb3540fb7e09592c39c0012bd988db7064e416a70778bf7792377683ab2b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/runwork-ai/cli/releases/download/v0.19.0/runwork-linux-arm64.tar.gz"
      sha256 "92cf0c8dfb9fe6a07cbfddebe66340192b702913c0e1b59ca1bc61e36a362da8"
    else
      url "https://github.com/runwork-ai/cli/releases/download/v0.19.0/runwork-linux-x64.tar.gz"
      sha256 "aee1a67bbd1d9e466fc08cdd2f27e4d5d82a4899be6e39578cf7a46789678113"
    end
  end

  def install
    bin.install Dir["runwork-*"].first => "runwork"
  end

  test do
    assert_match "runwork", shell_output("#{bin}/runwork --version")
  end
end
