class Runwork < Formula
  desc "CLI for Runwork - develop, preview, and deploy Runwork apps"
  homepage "https://www.runwork.ai"
  version "0.30.1"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/runwork-ai/cli/releases/download/v0.30.1/runwork-darwin-arm64.tar.gz"
      sha256 "ead542e5f7e79c135b7e7eae006d6e8b1929647e3af77c27f413217d1eb4c784"
    else
      url "https://github.com/runwork-ai/cli/releases/download/v0.30.1/runwork-darwin-x64.tar.gz"
      sha256 "24fc30f6ade284527f7e703523684cb61acc6b9fbe898e35eb82493c79349da0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/runwork-ai/cli/releases/download/v0.30.1/runwork-linux-arm64.tar.gz"
      sha256 "e1aa4c74a8dd08a729322209afb96529e07ee60b725fbef3f7377df904196c17"
    else
      url "https://github.com/runwork-ai/cli/releases/download/v0.30.1/runwork-linux-x64.tar.gz"
      sha256 "624b4b124de9dd3135ab0c8f22e04858e4d8a7d70fbbac92c53c0ab27b700e85"
    end
  end

  def install
    bin.install Dir["runwork-*"].first => "runwork"
  end

  test do
    assert_match "runwork", shell_output("#{bin}/runwork --version")
  end
end
