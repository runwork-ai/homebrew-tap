class Runwork < Formula
  desc "CLI for Runwork - develop, preview, and deploy Runwork apps"
  homepage "https://www.runwork.ai"
  version "0.31.1"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/runwork-ai/cli/releases/download/v0.31.1/runwork-darwin-arm64.tar.gz"
      sha256 "b1a8fedecb79d93ac96eda6e4fc042e8bc9629270903a8fd01865729bc1556ed"
    else
      url "https://github.com/runwork-ai/cli/releases/download/v0.31.1/runwork-darwin-x64.tar.gz"
      sha256 "28ea3595121da8a6e16d5dab4cfb79266e2f2d45ea709e825122b9c281017b8e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/runwork-ai/cli/releases/download/v0.31.1/runwork-linux-arm64.tar.gz"
      sha256 "bae9032af75acbb992b68062a1b8b8fd391ccaa4f40d51f5a5a2200579e137f2"
    else
      url "https://github.com/runwork-ai/cli/releases/download/v0.31.1/runwork-linux-x64.tar.gz"
      sha256 "69b4d28cbd0a81e80e33b14292e139b330b27792f83f448ca197bcd1c03a6a36"
    end
  end

  def install
    bin.install Dir["runwork-*"].first => "runwork"
  end

  test do
    assert_match "runwork", shell_output("#{bin}/runwork --version")
  end
end
