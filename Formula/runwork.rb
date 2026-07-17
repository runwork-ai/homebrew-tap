class Runwork < Formula
  desc "CLI for Runwork - develop, preview, and deploy Runwork apps"
  homepage "https://www.runwork.ai"
  version "0.18.1"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/runwork-ai/cli/releases/download/v0.18.1/runwork-darwin-arm64.tar.gz"
      sha256 "7cd5138b78d939e1380044f41dd4f6eabd984eaa6bd52e7dc7fbff0a5537b7e7"
    else
      url "https://github.com/runwork-ai/cli/releases/download/v0.18.1/runwork-darwin-x64.tar.gz"
      sha256 "73023e6ee9d56e250b4f69b1917ccb93d630b369baeb1406c1ba5e9107ddf191"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/runwork-ai/cli/releases/download/v0.18.1/runwork-linux-arm64.tar.gz"
      sha256 "4786d711024f9b232c7688976004b6b327f7bf18562ce11a34110b5d87149844"
    else
      url "https://github.com/runwork-ai/cli/releases/download/v0.18.1/runwork-linux-x64.tar.gz"
      sha256 "a3d9b0da10d28e486ca8218509124de24a62b14763e8befb1223f80f19ac2336"
    end
  end

  def install
    bin.install Dir["runwork-*"].first => "runwork"
  end

  test do
    assert_match "runwork", shell_output("#{bin}/runwork --version")
  end
end
