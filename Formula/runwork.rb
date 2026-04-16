class Runwork < Formula
  desc "CLI for Runwork - develop, preview, and deploy Runwork apps"
  homepage "https://www.runwork.ai"
  version "0.8.4"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/runwork-ai/cli/releases/download/v0.8.4/runwork-darwin-arm64.tar.gz"
      sha256 "3905cd23f4f6f656f56ca45df9fb2ba328fb55bc71b1fafee1ceb61edab8a7b1"
    else
      url "https://github.com/runwork-ai/cli/releases/download/v0.8.4/runwork-darwin-x64.tar.gz"
      sha256 "efb6e433fdaba46dbf4a045be0814370baf0ff02b2711aaa7ec34d75ecc40518"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/runwork-ai/cli/releases/download/v0.8.4/runwork-linux-arm64.tar.gz"
      sha256 "d8dc54760d9baf1dbd47b13a4f9be48ba1aed4d01cd0cfcf30f4eda62463a513"
    else
      url "https://github.com/runwork-ai/cli/releases/download/v0.8.4/runwork-linux-x64.tar.gz"
      sha256 "7e9c1a3526af1808b0bd56471a80715a8a76f821e2f8e84a8741239b599c9c99"
    end
  end

  def install
    bin.install Dir["runwork-*"].first => "runwork"
  end

  test do
    assert_match "runwork", shell_output("#{bin}/runwork --version")
  end
end
