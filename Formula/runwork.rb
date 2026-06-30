class Runwork < Formula
  desc "CLI for Runwork - develop, preview, and deploy Runwork apps"
  homepage "https://www.runwork.ai"
  version "0.17.0"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/runwork-ai/cli/releases/download/v0.17.0/runwork-darwin-arm64.tar.gz"
      sha256 "19054e49e59cb76eac149a81de9abed3fa15742b3a9da87183dc1be94c6df952"
    else
      url "https://github.com/runwork-ai/cli/releases/download/v0.17.0/runwork-darwin-x64.tar.gz"
      sha256 "34d821dd41766cfd9616ab371f562a38c50565bcaaab17af256ac5e345c126a4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/runwork-ai/cli/releases/download/v0.17.0/runwork-linux-arm64.tar.gz"
      sha256 "534f50d2d57e4f7cb42ab26fda4a0e65ced8ea2ddc60c20a0f343b4d858feb37"
    else
      url "https://github.com/runwork-ai/cli/releases/download/v0.17.0/runwork-linux-x64.tar.gz"
      sha256 "235c173e89028c59ab29681b744c74c02780b828f0a78f7267043c0f9358d6b2"
    end
  end

  def install
    bin.install Dir["runwork-*"].first => "runwork"
  end

  test do
    assert_match "runwork", shell_output("#{bin}/runwork --version")
  end
end
