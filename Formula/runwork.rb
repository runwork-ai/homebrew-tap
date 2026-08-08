class Runwork < Formula
  desc "CLI for Runwork - develop, preview, and deploy Runwork apps"
  homepage "https://www.runwork.ai"
  version "0.18.4"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/runwork-ai/cli/releases/download/v0.18.4/runwork-darwin-arm64.tar.gz"
      sha256 "85249d794b6e81efe103e25df70671b307a53f74b660028d8af94f769cb75f19"
    else
      url "https://github.com/runwork-ai/cli/releases/download/v0.18.4/runwork-darwin-x64.tar.gz"
      sha256 "ed47dc5bea2564d4da6985e579a787767abfa0f26eb69273d0f408d72256b652"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/runwork-ai/cli/releases/download/v0.18.4/runwork-linux-arm64.tar.gz"
      sha256 "706367991d5911d7b412f340e7870f52f555e852e8478b1493e4a25f84b3abf0"
    else
      url "https://github.com/runwork-ai/cli/releases/download/v0.18.4/runwork-linux-x64.tar.gz"
      sha256 "ffe0c4b68efef14f0b989bfc6c326e99f771683653802c6c3bd04b549e67731e"
    end
  end

  def install
    bin.install Dir["runwork-*"].first => "runwork"
  end

  test do
    assert_match "runwork", shell_output("#{bin}/runwork --version")
  end
end
