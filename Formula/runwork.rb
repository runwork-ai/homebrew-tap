class Runwork < Formula
  desc "CLI for Runwork - develop, preview, and deploy Runwork apps"
  homepage "https://www.runwork.ai"
  version "0.27.0"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/runwork-ai/cli/releases/download/v0.27.0/runwork-darwin-arm64.tar.gz"
      sha256 "269bf7d3fece609b03f1a9feb4bae9bd0bf67a208eef8984d77c76e9f1e81942"
    else
      url "https://github.com/runwork-ai/cli/releases/download/v0.27.0/runwork-darwin-x64.tar.gz"
      sha256 "044b8e3dca70d2dde15c3b961f18854edf16988505290299d194d15c92129da5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/runwork-ai/cli/releases/download/v0.27.0/runwork-linux-arm64.tar.gz"
      sha256 "4d69fc0fed60131b3bdf28c1e2a90ca1055168ffa0d16e150376599f2e7ab0eb"
    else
      url "https://github.com/runwork-ai/cli/releases/download/v0.27.0/runwork-linux-x64.tar.gz"
      sha256 "90b1d56ff2c3552a96bb2d957154a436b18947a935fa18441e00c6f3c92cbd03"
    end
  end

  def install
    bin.install Dir["runwork-*"].first => "runwork"
  end

  test do
    assert_match "runwork", shell_output("#{bin}/runwork --version")
  end
end
