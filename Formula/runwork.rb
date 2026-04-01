class Runwork < Formula
  desc "CLI for Runwork - develop, preview, and deploy Runwork apps"
  homepage "https://www.runwork.ai"
  version "0.6.0"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/runwork-ai/cli/releases/download/v0.6.0/runwork-darwin-arm64.tar.gz"
      sha256 "c069619f9cc136585587b8d58a010796696ab593e235df9fbb57e63599841636"
    else
      url "https://github.com/runwork-ai/cli/releases/download/v0.6.0/runwork-darwin-x64.tar.gz"
      sha256 "04cd829ed6144a95b16d5343fbc0ee7fc1bb358b384c9ef40e7ce242cef42d80"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/runwork-ai/cli/releases/download/v0.6.0/runwork-linux-arm64.tar.gz"
      sha256 "39497249cee0a2ebc81b9ffab6fab560b62029e4ef0895f6d55bc53dd9629879"
    else
      url "https://github.com/runwork-ai/cli/releases/download/v0.6.0/runwork-linux-x64.tar.gz"
      sha256 "bafc483f516accc0a41951110e828cee09ae0d25b857d45e951b470a885b26ef"
    end
  end

  def install
    bin.install Dir["runwork-*"].first => "runwork"
  end

  test do
    assert_match "runwork", shell_output("#{bin}/runwork --version")
  end
end
