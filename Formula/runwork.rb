class Runwork < Formula
  desc "CLI for Runwork - develop, preview, and deploy Runwork apps"
  homepage "https://www.runwork.ai"
  version "0.23.2"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/runwork-ai/cli/releases/download/v0.23.2/runwork-darwin-arm64.tar.gz"
      sha256 "de22a2d4c3bb69c3ea9bc119970892bc5c1eed78d4a73a2d93bf042be8c0609e"
    else
      url "https://github.com/runwork-ai/cli/releases/download/v0.23.2/runwork-darwin-x64.tar.gz"
      sha256 "89f581ecdc120ea49083ba0e3ca38763ef28879fc5808443fb9b164aef6d64e8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/runwork-ai/cli/releases/download/v0.23.2/runwork-linux-arm64.tar.gz"
      sha256 "a43a65fc4b4450e44ff53223d59adebb5f1652b99a2299cf5883ea831c86aa64"
    else
      url "https://github.com/runwork-ai/cli/releases/download/v0.23.2/runwork-linux-x64.tar.gz"
      sha256 "e608e7872f5ac7b2f421b024d2bd60ec327e94883eaa76e2f19d5a81d3df69ca"
    end
  end

  def install
    bin.install Dir["runwork-*"].first => "runwork"
  end

  test do
    assert_match "runwork", shell_output("#{bin}/runwork --version")
  end
end
