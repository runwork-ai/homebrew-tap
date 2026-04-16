class Runwork < Formula
  desc "CLI for Runwork - develop, preview, and deploy Runwork apps"
  homepage "https://www.runwork.ai"
  version "0.9.0"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/runwork-ai/cli/releases/download/v0.9.0/runwork-darwin-arm64.tar.gz"
      sha256 "2a4babc8bd38fc5f84d0253e4e1439a9fb09974b79b5818fd1b5421711693712"
    else
      url "https://github.com/runwork-ai/cli/releases/download/v0.9.0/runwork-darwin-x64.tar.gz"
      sha256 "0bfd1ee93bbad1632f9fa8b76b198c786c37ca4697b3bacc8723db0a19fcac40"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/runwork-ai/cli/releases/download/v0.9.0/runwork-linux-arm64.tar.gz"
      sha256 "76b626a18c093be4e0338de67c3b01230b3ca4225ca380014e8e85a89435a49b"
    else
      url "https://github.com/runwork-ai/cli/releases/download/v0.9.0/runwork-linux-x64.tar.gz"
      sha256 "5f8df8e212a65733449003f3faa9344c7839ef79957c3cc23c1e7ebcb994a950"
    end
  end

  def install
    bin.install Dir["runwork-*"].first => "runwork"
  end

  test do
    assert_match "runwork", shell_output("#{bin}/runwork --version")
  end
end
