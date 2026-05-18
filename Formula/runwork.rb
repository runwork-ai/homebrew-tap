class Runwork < Formula
  desc "CLI for Runwork - develop, preview, and deploy Runwork apps"
  homepage "https://www.runwork.ai"
  version "0.12.0"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/runwork-ai/cli/releases/download/v0.12.0/runwork-darwin-arm64.tar.gz"
      sha256 "84c0a45c436a4d3a57f2633e6a5634caf0b06cf295ce5732d95788cb04e020c5"
    else
      url "https://github.com/runwork-ai/cli/releases/download/v0.12.0/runwork-darwin-x64.tar.gz"
      sha256 "2d6b4f4ccd1a5eb4667b44b6ab7bcbcbe6feade5a6a59d1ac7aff29505b0f18d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/runwork-ai/cli/releases/download/v0.12.0/runwork-linux-arm64.tar.gz"
      sha256 "c7f819277c3a81246a636aaf26aab6337130c68f21e62453d8746606e1ce76e0"
    else
      url "https://github.com/runwork-ai/cli/releases/download/v0.12.0/runwork-linux-x64.tar.gz"
      sha256 "cfa74aa0d0cc0b1fb4d0abe443ca772468a88bf5a4e4da961906a30e32273c55"
    end
  end

  def install
    bin.install Dir["runwork-*"].first => "runwork"
  end

  test do
    assert_match "runwork", shell_output("#{bin}/runwork --version")
  end
end
