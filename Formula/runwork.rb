class Runwork < Formula
  desc "CLI for Runwork - develop, preview, and deploy Runwork apps"
  homepage "https://www.runwork.ai"
  version "0.39.3"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/runwork-ai/cli/releases/download/v0.39.3/runwork-darwin-arm64.tar.gz"
      sha256 "fd04de90ef83b58b3cedc75eee0e224e964bf6ba4f4758954c070367d81f2b04"
    else
      url "https://github.com/runwork-ai/cli/releases/download/v0.39.3/runwork-darwin-x64.tar.gz"
      sha256 "e8cdfe100032889c9b7e0ad0dcd6d468d52711e0974f77883a21a00bf52c7e55"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/runwork-ai/cli/releases/download/v0.39.3/runwork-linux-arm64.tar.gz"
      sha256 "2bbda4f8cd1dad28dc8d2b6fad3d0bbcd186ca8d49fe82b6e946b40f822da9f4"
    else
      url "https://github.com/runwork-ai/cli/releases/download/v0.39.3/runwork-linux-x64.tar.gz"
      sha256 "1ed8540cfac57a5cb30f534c3e0b19e7c9d9ebe6fbf335180808ef872958ecf2"
    end
  end

  def install
    bin.install Dir["runwork-*"].first => "runwork"
  end

  test do
    assert_match "runwork", shell_output("#{bin}/runwork --version")
  end
end
