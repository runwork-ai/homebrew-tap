class Runwork < Formula
  desc "CLI for Runwork - develop, preview, and deploy Runwork apps"
  homepage "https://www.runwork.ai"
  version "0.35.0"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/runwork-ai/cli/releases/download/v0.35.0/runwork-darwin-arm64.tar.gz"
      sha256 "163a134081bb90a3ce6cd9f7886dff5f2d0da85189056e3d7077333ef6d96aaf"
    else
      url "https://github.com/runwork-ai/cli/releases/download/v0.35.0/runwork-darwin-x64.tar.gz"
      sha256 "2913eda2b73aef8ab074d9c1a331afa940824ec8ad75fdb9cf0c28b7b7c81f4a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/runwork-ai/cli/releases/download/v0.35.0/runwork-linux-arm64.tar.gz"
      sha256 "c2894ccf2fa447bdb9fa8cd3ae4d955212dda4fda9208d64965ae44953f8640e"
    else
      url "https://github.com/runwork-ai/cli/releases/download/v0.35.0/runwork-linux-x64.tar.gz"
      sha256 "337570a5d801f9b90f4f64c0e7fdc23471fd9fc2877ce25560abe0969642c1a2"
    end
  end

  def install
    bin.install Dir["runwork-*"].first => "runwork"
  end

  test do
    assert_match "runwork", shell_output("#{bin}/runwork --version")
  end
end
