class Runwork < Formula
  desc "CLI for Runwork - develop, preview, and deploy Runwork apps"
  homepage "https://www.runwork.ai"
  version "0.30.0"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/runwork-ai/cli/releases/download/v0.30.0/runwork-darwin-arm64.tar.gz"
      sha256 "e897118b2cc8fc722d3995edc4afc490d1a62875594f5916c07daf61cc917a42"
    else
      url "https://github.com/runwork-ai/cli/releases/download/v0.30.0/runwork-darwin-x64.tar.gz"
      sha256 "8261ded4d0fd25b1f316a8bcca84f42ac3c222e6090e228c4c9ee3d461b0f120"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/runwork-ai/cli/releases/download/v0.30.0/runwork-linux-arm64.tar.gz"
      sha256 "686818dfdda18c5dfb655cb20570c3fc3976247748278bad979ada6c54bd6258"
    else
      url "https://github.com/runwork-ai/cli/releases/download/v0.30.0/runwork-linux-x64.tar.gz"
      sha256 "8a5a4b2f36d931d46b9e6c8947b3dba306ccbe5ae990981ca3643ffd367469b9"
    end
  end

  def install
    bin.install Dir["runwork-*"].first => "runwork"
  end

  test do
    assert_match "runwork", shell_output("#{bin}/runwork --version")
  end
end
