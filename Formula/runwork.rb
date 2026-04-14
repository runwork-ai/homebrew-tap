class Runwork < Formula
  desc "CLI for Runwork - develop, preview, and deploy Runwork apps"
  homepage "https://www.runwork.ai"
  version "0.8.3"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/runwork-ai/cli/releases/download/v0.8.3/runwork-darwin-arm64.tar.gz"
      sha256 "7b115f4b40fe74c2c7eb8a7e1e795a8dde0880eea0971b03e72c008ebdb9e875"
    else
      url "https://github.com/runwork-ai/cli/releases/download/v0.8.3/runwork-darwin-x64.tar.gz"
      sha256 "79d9a4288a939d65dbce6590c18dfa8584687461ce15ad69da35e4f0049f6e6a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/runwork-ai/cli/releases/download/v0.8.3/runwork-linux-arm64.tar.gz"
      sha256 "055b511983cc05c583afdef7cc362241db0826880329ff9c216102781353d2d5"
    else
      url "https://github.com/runwork-ai/cli/releases/download/v0.8.3/runwork-linux-x64.tar.gz"
      sha256 "68fc2f0d116015a553748582bdbc3873ef30d5116150539d7d69041b6ad93ab2"
    end
  end

  def install
    bin.install Dir["runwork-*"].first => "runwork"
  end

  test do
    assert_match "runwork", shell_output("#{bin}/runwork --version")
  end
end
