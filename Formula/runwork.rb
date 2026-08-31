class Runwork < Formula
  desc "CLI for Runwork - develop, preview, and deploy Runwork apps"
  homepage "https://www.runwork.ai"
  version "0.26.0"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/runwork-ai/cli/releases/download/v0.26.0/runwork-darwin-arm64.tar.gz"
      sha256 "2de61353720670e64ae648417204c0ba614b20ba8ffc0a01ea377cd8d60636c2"
    else
      url "https://github.com/runwork-ai/cli/releases/download/v0.26.0/runwork-darwin-x64.tar.gz"
      sha256 "32e3b80013b9a8dde51381604f310804e80168dbd66f194360ce05bd393db666"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/runwork-ai/cli/releases/download/v0.26.0/runwork-linux-arm64.tar.gz"
      sha256 "5796f46019a8a2bcb679a137f2337fa964bb01d9dff4c2901d24c5eacab769d0"
    else
      url "https://github.com/runwork-ai/cli/releases/download/v0.26.0/runwork-linux-x64.tar.gz"
      sha256 "19974bb9df100a1d5d438946d736cfc3a716700422f0dedf3e797a976cd09604"
    end
  end

  def install
    bin.install Dir["runwork-*"].first => "runwork"
  end

  test do
    assert_match "runwork", shell_output("#{bin}/runwork --version")
  end
end
