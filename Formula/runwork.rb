class Runwork < Formula
  desc "CLI for Runwork - develop, preview, and deploy Runwork apps"
  homepage "https://www.runwork.ai"
  version "0.21.0"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/runwork-ai/cli/releases/download/v0.21.0/runwork-darwin-arm64.tar.gz"
      sha256 "785741aedf521e06ba0b3e8027ac5873fa6ee4ed549a96c87096136af33c4298"
    else
      url "https://github.com/runwork-ai/cli/releases/download/v0.21.0/runwork-darwin-x64.tar.gz"
      sha256 "9729d4f27502d22c80d78a291522bca7e587c7e54cb7d7d3b7bc435aaffb168f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/runwork-ai/cli/releases/download/v0.21.0/runwork-linux-arm64.tar.gz"
      sha256 "120122b8f8ccb40e88577c70fcd4d6cf389b7d0bbc577395350f8fc9cc9675df"
    else
      url "https://github.com/runwork-ai/cli/releases/download/v0.21.0/runwork-linux-x64.tar.gz"
      sha256 "849ccdd7054d02e2a4895903c45a11a805e619bdce64be06d0f6d3be89de1fef"
    end
  end

  def install
    bin.install Dir["runwork-*"].first => "runwork"
  end

  test do
    assert_match "runwork", shell_output("#{bin}/runwork --version")
  end
end
