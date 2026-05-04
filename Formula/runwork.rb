class Runwork < Formula
  desc "CLI for Runwork - develop, preview, and deploy Runwork apps"
  homepage "https://www.runwork.ai"
  version "0.10.0"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/runwork-ai/cli/releases/download/v0.10.0/runwork-darwin-arm64.tar.gz"
      sha256 "e5f4a87219922bdd93d96903e6086257d856702bd265fcf2792c5ab6fb5d4d42"
    else
      url "https://github.com/runwork-ai/cli/releases/download/v0.10.0/runwork-darwin-x64.tar.gz"
      sha256 "694575ebe6a95cfefaf6108e6d50f493f85ad0badfe2c2eed116df27992e9527"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/runwork-ai/cli/releases/download/v0.10.0/runwork-linux-arm64.tar.gz"
      sha256 "5db4223758ab512c4d21d26fde178bb2d838f9018c27d38ec27e6b828594b014"
    else
      url "https://github.com/runwork-ai/cli/releases/download/v0.10.0/runwork-linux-x64.tar.gz"
      sha256 "78a7c7df53618346639ad268414c1e6fbca03b6db76ef8b611e0409dcdf71eee"
    end
  end

  def install
    bin.install Dir["runwork-*"].first => "runwork"
  end

  test do
    assert_match "runwork", shell_output("#{bin}/runwork --version")
  end
end
