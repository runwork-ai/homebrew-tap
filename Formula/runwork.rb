class Runwork < Formula
  desc "CLI for Runwork - develop, preview, and deploy Runwork apps"
  homepage "https://www.runwork.ai"
  version "0.19.1"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/runwork-ai/cli/releases/download/v0.19.1/runwork-darwin-arm64.tar.gz"
      sha256 "c6b98131c98684de5d7bd15f7366afbcebbafdebf0403679a34371e79b229e46"
    else
      url "https://github.com/runwork-ai/cli/releases/download/v0.19.1/runwork-darwin-x64.tar.gz"
      sha256 "81f4a3f294f177aaf142782668a18e5f8023040bec90c65306d0a60ff5fcf1c1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/runwork-ai/cli/releases/download/v0.19.1/runwork-linux-arm64.tar.gz"
      sha256 "151ce73d680ac9d52fc8c82619e9a3cbbbd243b3fcd924add21d12eba4b66025"
    else
      url "https://github.com/runwork-ai/cli/releases/download/v0.19.1/runwork-linux-x64.tar.gz"
      sha256 "92835b562f85d6e21cf92b7d3b0eb1e00ca8646e2db25359306db3bd8d7bc197"
    end
  end

  def install
    bin.install Dir["runwork-*"].first => "runwork"
  end

  test do
    assert_match "runwork", shell_output("#{bin}/runwork --version")
  end
end
