class Runwork < Formula
  desc "CLI for Runwork - develop, preview, and deploy Runwork apps"
  homepage "https://www.runwork.ai"
  version "0.24.0"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/runwork-ai/cli/releases/download/v0.24.0/runwork-darwin-arm64.tar.gz"
      sha256 "fff9372d91d3e09e6c6c4f4f7ae3a0ba44e2078de13d436e327c09d97be0ed6c"
    else
      url "https://github.com/runwork-ai/cli/releases/download/v0.24.0/runwork-darwin-x64.tar.gz"
      sha256 "1a202a276889fc92e2992fc59cbd1fd2a078625479430d827ac63038a41514c2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/runwork-ai/cli/releases/download/v0.24.0/runwork-linux-arm64.tar.gz"
      sha256 "ed5b01aa5c1abad471e4642c3e1a3d46afae6334de9284d881d797be4f9f6eba"
    else
      url "https://github.com/runwork-ai/cli/releases/download/v0.24.0/runwork-linux-x64.tar.gz"
      sha256 "0ddd86fbc885ddf27c80da3eaa48e6e713f1bdf1a2e7b2ed84d7f1e1433b5be4"
    end
  end

  def install
    bin.install Dir["runwork-*"].first => "runwork"
  end

  test do
    assert_match "runwork", shell_output("#{bin}/runwork --version")
  end
end
