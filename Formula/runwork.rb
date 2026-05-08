class Runwork < Formula
  desc "CLI for Runwork - develop, preview, and deploy Runwork apps"
  homepage "https://www.runwork.ai"
  version "0.10.3"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/runwork-ai/cli/releases/download/v0.10.3/runwork-darwin-arm64.tar.gz"
      sha256 "da023cfa170c37d17591f2253d9c3394050a19fe8bc19e27e2f8f576b817204a"
    else
      url "https://github.com/runwork-ai/cli/releases/download/v0.10.3/runwork-darwin-x64.tar.gz"
      sha256 "3ed8bc6a28eb0b8b31202da88d80f9787d400e76fcb788d49d662cefd7c1b187"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/runwork-ai/cli/releases/download/v0.10.3/runwork-linux-arm64.tar.gz"
      sha256 "6f605b7ecf97615c52a1b059b40b937294b582f9b531b68d132840db3ca293b8"
    else
      url "https://github.com/runwork-ai/cli/releases/download/v0.10.3/runwork-linux-x64.tar.gz"
      sha256 "f537f82c3167066ec4c7190818d0d28bc3173932b7dc226a79e0b88c44739bf6"
    end
  end

  def install
    bin.install Dir["runwork-*"].first => "runwork"
  end

  test do
    assert_match "runwork", shell_output("#{bin}/runwork --version")
  end
end
