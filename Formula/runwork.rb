class Runwork < Formula
  desc "CLI for Runwork - develop, preview, and deploy Runwork apps"
  homepage "https://www.runwork.ai"
  version "0.3.0"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/runwork-ai/cli/releases/download/v0.3.0/runwork-darwin-arm64.tar.gz"
      sha256 "1d63fdb7481ff4d985b7dd6a632243c38da3a2e38c44e6e969d27584fe029f48"
    else
      url "https://github.com/runwork-ai/cli/releases/download/v0.3.0/runwork-darwin-x64.tar.gz"
      sha256 "22b35d621fbf00279b5b167d4f95f1db8fdc7e580ba5fa4a6da788c24182faee"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/runwork-ai/cli/releases/download/v0.3.0/runwork-linux-arm64.tar.gz"
      sha256 "2f42592bee3c2883d831c0f9dcce5438101e135b7004b02c727595d7e0ef080d"
    else
      url "https://github.com/runwork-ai/cli/releases/download/v0.3.0/runwork-linux-x64.tar.gz"
      sha256 "b8a340bca227b8d2a6ad65d9f795d0d0d885cabfb5d9f1a547b2508283a9cd47"
    end
  end

  def install
    bin.install Dir["runwork-*"].first => "runwork"
  end

  test do
    assert_match "runwork", shell_output("#{bin}/runwork --version")
  end
end
