class Runwork < Formula
  desc "CLI for Runwork - develop, preview, and deploy Runwork apps"
  homepage "https://www.runwork.ai"
  version "0.21.1"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/runwork-ai/cli/releases/download/v0.21.1/runwork-darwin-arm64.tar.gz"
      sha256 "74cb5e512b898ca4338a254f67c952b0de758e481ee31fe6e6e24d58272bf645"
    else
      url "https://github.com/runwork-ai/cli/releases/download/v0.21.1/runwork-darwin-x64.tar.gz"
      sha256 "6f036e8653349c2f49322af2509b6ef8b815c4cd34335a59049761c9e5682bb4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/runwork-ai/cli/releases/download/v0.21.1/runwork-linux-arm64.tar.gz"
      sha256 "d398fe04f704b7f20fab1a070719aa91209e01d5fe1072991cebb6e474c6ce49"
    else
      url "https://github.com/runwork-ai/cli/releases/download/v0.21.1/runwork-linux-x64.tar.gz"
      sha256 "7a90e2886318c66fceebb8125cd58e0188c29c02d04157fe620f4eb0b202daba"
    end
  end

  def install
    bin.install Dir["runwork-*"].first => "runwork"
  end

  test do
    assert_match "runwork", shell_output("#{bin}/runwork --version")
  end
end
