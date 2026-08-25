class Runwork < Formula
  desc "CLI for Runwork - develop, preview, and deploy Runwork apps"
  homepage "https://www.runwork.ai"
  version "0.25.1"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/runwork-ai/cli/releases/download/v0.25.1/runwork-darwin-arm64.tar.gz"
      sha256 "82d77db3370280cb9ede33b5efb7d0ec1a589d8b0a87167d2c648931f7466f72"
    else
      url "https://github.com/runwork-ai/cli/releases/download/v0.25.1/runwork-darwin-x64.tar.gz"
      sha256 "386ea3168532598293cc2a8cc3e93c571dbdf575174deb5b42f7486ac5b50f1f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/runwork-ai/cli/releases/download/v0.25.1/runwork-linux-arm64.tar.gz"
      sha256 "6e51d558fb7560495412e99ae07356a76a4efc21a444baa5bb85d62e43b96aa8"
    else
      url "https://github.com/runwork-ai/cli/releases/download/v0.25.1/runwork-linux-x64.tar.gz"
      sha256 "979a803bc54d9735192ccc66c2cade9165dfad55ca3b309b3e8b258767a91478"
    end
  end

  def install
    bin.install Dir["runwork-*"].first => "runwork"
  end

  test do
    assert_match "runwork", shell_output("#{bin}/runwork --version")
  end
end
