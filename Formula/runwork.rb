class Runwork < Formula
  desc "CLI for Runwork - develop, preview, and deploy Runwork apps"
  homepage "https://www.runwork.ai"
  version "0.6.1"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/runwork-ai/cli/releases/download/v0.6.1/runwork-darwin-arm64.tar.gz"
      sha256 "b617a0c481562e7001aae99912165eb7175fcbf8e90433ae350c7f3d89bb7078"
    else
      url "https://github.com/runwork-ai/cli/releases/download/v0.6.1/runwork-darwin-x64.tar.gz"
      sha256 "51f257f3a674061aceced8a7831ba5652eeeb4fa77fd72cd2bdbd267d2c52e51"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/runwork-ai/cli/releases/download/v0.6.1/runwork-linux-arm64.tar.gz"
      sha256 "045c2438f71bda64bdc9707630e9e3df57b21529f130e042a772ead92e36b143"
    else
      url "https://github.com/runwork-ai/cli/releases/download/v0.6.1/runwork-linux-x64.tar.gz"
      sha256 "6a69655d92f7872d725dabe3ea3f976e951bfa81241db9e1d764069d29b85033"
    end
  end

  def install
    bin.install Dir["runwork-*"].first => "runwork"
  end

  test do
    assert_match "runwork", shell_output("#{bin}/runwork --version")
  end
end
