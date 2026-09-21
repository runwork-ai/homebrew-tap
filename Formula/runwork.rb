class Runwork < Formula
  desc "CLI for Runwork - develop, preview, and deploy Runwork apps"
  homepage "https://www.runwork.ai"
  version "0.29.1"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/runwork-ai/cli/releases/download/v0.29.1/runwork-darwin-arm64.tar.gz"
      sha256 "2c7e673c6ff3b4db2c4fd866aa9d0c902aeba49a6e3c964483cd2a376e4e789c"
    else
      url "https://github.com/runwork-ai/cli/releases/download/v0.29.1/runwork-darwin-x64.tar.gz"
      sha256 "b61d9fbc6884044a1fe8ba7004acc0944d9ad821e488d28348c15251cee80ea2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/runwork-ai/cli/releases/download/v0.29.1/runwork-linux-arm64.tar.gz"
      sha256 "026a9387f1bc9c64698666bfa23969fbd7292c86c5e95d09d608588fca2aa53e"
    else
      url "https://github.com/runwork-ai/cli/releases/download/v0.29.1/runwork-linux-x64.tar.gz"
      sha256 "43ec5e5254dee46e57cef111f8cdabfa6350994cd817da6fcf707b2e849fb0d8"
    end
  end

  def install
    bin.install Dir["runwork-*"].first => "runwork"
  end

  test do
    assert_match "runwork", shell_output("#{bin}/runwork --version")
  end
end
