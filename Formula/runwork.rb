class Runwork < Formula
  desc "CLI for Runwork - develop, preview, and deploy Runwork apps"
  homepage "https://www.runwork.ai"
  version "0.15.1"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/runwork-ai/cli/releases/download/v0.15.1/runwork-darwin-arm64.tar.gz"
      sha256 "094e60ffba9c411ad682c47313aefa44199bdaa4425c67091c061d8e5841dac7"
    else
      url "https://github.com/runwork-ai/cli/releases/download/v0.15.1/runwork-darwin-x64.tar.gz"
      sha256 "7e479eda10efe83d94f76adfed526adc7dbb3459e6afd99bb09681b8b00fef04"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/runwork-ai/cli/releases/download/v0.15.1/runwork-linux-arm64.tar.gz"
      sha256 "bd0aa30a0832c0ac3a057a5bad5fd711b95085d287928a0d183896c40de69b12"
    else
      url "https://github.com/runwork-ai/cli/releases/download/v0.15.1/runwork-linux-x64.tar.gz"
      sha256 "294e371f8dd30840feb075494e1e01768140bbc91866e5257928ce20a423d3b8"
    end
  end

  def install
    bin.install Dir["runwork-*"].first => "runwork"
  end

  test do
    assert_match "runwork", shell_output("#{bin}/runwork --version")
  end
end
