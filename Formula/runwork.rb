class Runwork < Formula
  desc "CLI for Runwork - develop, preview, and deploy Runwork apps"
  homepage "https://www.runwork.ai"
  version "0.25.0"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/runwork-ai/cli/releases/download/v0.25.0/runwork-darwin-arm64.tar.gz"
      sha256 "bc7c8713742abe6afbeb2c864636941cb2b73ff0a90a33020ab4e9f40f4e4997"
    else
      url "https://github.com/runwork-ai/cli/releases/download/v0.25.0/runwork-darwin-x64.tar.gz"
      sha256 "58d3236cd6c014a56017690777fa865ea25f0b372712282e971ce43ec6f40a35"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/runwork-ai/cli/releases/download/v0.25.0/runwork-linux-arm64.tar.gz"
      sha256 "a44d670f81ad78726812d3016c8bb738a60092b9b47ad10b3c93f3c411549edc"
    else
      url "https://github.com/runwork-ai/cli/releases/download/v0.25.0/runwork-linux-x64.tar.gz"
      sha256 "a727b2eb75c625b2d408b32d217d20fc034fbd9809618cdf29facbb36699ee6f"
    end
  end

  def install
    bin.install Dir["runwork-*"].first => "runwork"
  end

  test do
    assert_match "runwork", shell_output("#{bin}/runwork --version")
  end
end
