class Runwork < Formula
  desc "CLI for Runwork - develop, preview, and deploy Runwork apps"
  homepage "https://www.runwork.ai"
  version "0.29.0"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/runwork-ai/cli/releases/download/v0.29.0/runwork-darwin-arm64.tar.gz"
      sha256 "1c8eb8ad10d459367e2d1ff9acf7483a3442d40720e6cb100e2746f0432aa4c5"
    else
      url "https://github.com/runwork-ai/cli/releases/download/v0.29.0/runwork-darwin-x64.tar.gz"
      sha256 "29539c6e583dc7672e94a42c1a7e6ed69a90fbba1084e590528cffe08b2952f7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/runwork-ai/cli/releases/download/v0.29.0/runwork-linux-arm64.tar.gz"
      sha256 "06dceffa1cc002dc0f94d90d4ebf5c5fef9c4c09ffe675ccee2f691ac1b9a0c1"
    else
      url "https://github.com/runwork-ai/cli/releases/download/v0.29.0/runwork-linux-x64.tar.gz"
      sha256 "0a0ac6e0cb0be649ccded69d436de8a1d0f6710a7531534eecf4f871e62f4e1e"
    end
  end

  def install
    bin.install Dir["runwork-*"].first => "runwork"
  end

  test do
    assert_match "runwork", shell_output("#{bin}/runwork --version")
  end
end
