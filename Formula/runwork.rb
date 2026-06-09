class Runwork < Formula
  desc "CLI for Runwork - develop, preview, and deploy Runwork apps"
  homepage "https://www.runwork.ai"
  version "0.15.2"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/runwork-ai/cli/releases/download/v0.15.2/runwork-darwin-arm64.tar.gz"
      sha256 "2e6144b58750998fcaa65b2bfc1eefb7ce800b31643e9e25efe7f1952af07065"
    else
      url "https://github.com/runwork-ai/cli/releases/download/v0.15.2/runwork-darwin-x64.tar.gz"
      sha256 "3df74097a4d0c9a4903471307dd1da8dc79313a24ad277236b75bf12074eb44a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/runwork-ai/cli/releases/download/v0.15.2/runwork-linux-arm64.tar.gz"
      sha256 "84199f76cbfc704d7947894c66c3a14b7cc46ae38b6d934d36fd886a722d1809"
    else
      url "https://github.com/runwork-ai/cli/releases/download/v0.15.2/runwork-linux-x64.tar.gz"
      sha256 "47f8e23869d241e6e47855f8f113ccc28868351e2366a14bdb0faf72acdae5a3"
    end
  end

  def install
    bin.install Dir["runwork-*"].first => "runwork"
  end

  test do
    assert_match "runwork", shell_output("#{bin}/runwork --version")
  end
end
