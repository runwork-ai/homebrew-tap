class Runwork < Formula
  desc "CLI for Runwork - develop, preview, and deploy Runwork apps"
  homepage "https://www.runwork.ai"
  version "0.13.2"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/runwork-ai/cli/releases/download/v0.13.2/runwork-darwin-arm64.tar.gz"
      sha256 "6064bc509c6806f5d30afaa74238e17087fed951f034d6545ee49bcacf4d9469"
    else
      url "https://github.com/runwork-ai/cli/releases/download/v0.13.2/runwork-darwin-x64.tar.gz"
      sha256 "cb5be5ffb529d7e0750af16650c49027fc8386aa763b72a17cbf2fe0e4b96c23"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/runwork-ai/cli/releases/download/v0.13.2/runwork-linux-arm64.tar.gz"
      sha256 "a06af6583e18fab040f725086e6742c99f75d346dd440fd338eb70a762d4dca6"
    else
      url "https://github.com/runwork-ai/cli/releases/download/v0.13.2/runwork-linux-x64.tar.gz"
      sha256 "b70cfb9f6e09acfe4ec074baae7e1d4dff85e1750b25426f874baf5102b89769"
    end
  end

  def install
    bin.install Dir["runwork-*"].first => "runwork"
  end

  test do
    assert_match "runwork", shell_output("#{bin}/runwork --version")
  end
end
