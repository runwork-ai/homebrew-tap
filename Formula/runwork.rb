class Runwork < Formula
  desc "CLI for Runwork - develop, preview, and deploy Runwork apps"
  homepage "https://www.runwork.ai"
  version "0.25.2"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/runwork-ai/cli/releases/download/v0.25.2/runwork-darwin-arm64.tar.gz"
      sha256 "adf29741c41208b3df3d65f0b2ee1134783c5640cb445848571dd70b0966b4ee"
    else
      url "https://github.com/runwork-ai/cli/releases/download/v0.25.2/runwork-darwin-x64.tar.gz"
      sha256 "ed3bbeccd9fb93fe8049292944e4a6156a2b97f4903ead8bebf20ba346d9f07d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/runwork-ai/cli/releases/download/v0.25.2/runwork-linux-arm64.tar.gz"
      sha256 "692db80f26f3c8a7d78a36f1b74c7629a8ae407d4beaa38003261bd06151ed12"
    else
      url "https://github.com/runwork-ai/cli/releases/download/v0.25.2/runwork-linux-x64.tar.gz"
      sha256 "a2f30ec862b1414a7522e85f69ba075dfad2b7aace560f9298b3fee8d41711ae"
    end
  end

  def install
    bin.install Dir["runwork-*"].first => "runwork"
  end

  test do
    assert_match "runwork", shell_output("#{bin}/runwork --version")
  end
end
