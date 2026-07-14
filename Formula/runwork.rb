class Runwork < Formula
  desc "CLI for Runwork - develop, preview, and deploy Runwork apps"
  homepage "https://www.runwork.ai"
  version "0.18.0"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/runwork-ai/cli/releases/download/v0.18.0/runwork-darwin-arm64.tar.gz"
      sha256 "0959cc44f9bde781ababbb6bae1adbe5b997873506658c648b2db09fdddb1b3c"
    else
      url "https://github.com/runwork-ai/cli/releases/download/v0.18.0/runwork-darwin-x64.tar.gz"
      sha256 "cd89573000741490b72698f95a8cd14fff0de50754fc3ea5c43aad94546f3ca4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/runwork-ai/cli/releases/download/v0.18.0/runwork-linux-arm64.tar.gz"
      sha256 "178e783c2d29b682207ece77a63d9bf7664b09cecaf663a17dfbab9e1243d579"
    else
      url "https://github.com/runwork-ai/cli/releases/download/v0.18.0/runwork-linux-x64.tar.gz"
      sha256 "776bd03c557a3a1b69b762a7d3e61ed06fd42638fc7b19ceb91e1f6a5a56438f"
    end
  end

  def install
    bin.install Dir["runwork-*"].first => "runwork"
  end

  test do
    assert_match "runwork", shell_output("#{bin}/runwork --version")
  end
end
