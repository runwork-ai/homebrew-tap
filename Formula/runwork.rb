class Runwork < Formula
  desc "CLI for Runwork - develop, preview, and deploy Runwork apps"
  homepage "https://www.runwork.ai"
  version "0.11.0"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/runwork-ai/cli/releases/download/v0.11.0/runwork-darwin-arm64.tar.gz"
      sha256 "7f6f47abc352ce66f4cac8554902658ab452148ec301a424e6c11bd29d10b606"
    else
      url "https://github.com/runwork-ai/cli/releases/download/v0.11.0/runwork-darwin-x64.tar.gz"
      sha256 "2faf68809c59520c6546468ed9fbfe94c00bbd7ae18b3c60b4409031b0e22478"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/runwork-ai/cli/releases/download/v0.11.0/runwork-linux-arm64.tar.gz"
      sha256 "760664cdfd456c0adae7facf02572b1cb3255ddca6b14f581899bf362669d4ad"
    else
      url "https://github.com/runwork-ai/cli/releases/download/v0.11.0/runwork-linux-x64.tar.gz"
      sha256 "f333c5d4025e42c2500e733ad9bca0a5b3143e93ae1f005f5dc84eea3083b036"
    end
  end

  def install
    bin.install Dir["runwork-*"].first => "runwork"
  end

  test do
    assert_match "runwork", shell_output("#{bin}/runwork --version")
  end
end
