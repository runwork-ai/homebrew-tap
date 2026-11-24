class Runwork < Formula
  desc "CLI for Runwork - develop, preview, and deploy Runwork apps"
  homepage "https://www.runwork.ai"
  version "0.39.1"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/runwork-ai/cli/releases/download/v0.39.1/runwork-darwin-arm64.tar.gz"
      sha256 "ad8ef05fb142e4cb302844398d9abd652a2fbfaa6cd035fbff3bb88010029c4d"
    else
      url "https://github.com/runwork-ai/cli/releases/download/v0.39.1/runwork-darwin-x64.tar.gz"
      sha256 "62789982dd2cd79f3668d4ace12af0a387d4873ff06d95de400750e2049e6418"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/runwork-ai/cli/releases/download/v0.39.1/runwork-linux-arm64.tar.gz"
      sha256 "dd309893dfe0f704caa7a4c49dcf6188925adad78c9c71172097f9b63640f68c"
    else
      url "https://github.com/runwork-ai/cli/releases/download/v0.39.1/runwork-linux-x64.tar.gz"
      sha256 "de98db99ec322d753fb4a0a5d6f983f523fd0da8b16f22e06d7a633f80f39757"
    end
  end

  def install
    bin.install Dir["runwork-*"].first => "runwork"
  end

  test do
    assert_match "runwork", shell_output("#{bin}/runwork --version")
  end
end
