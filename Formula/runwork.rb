class Runwork < Formula
  desc "CLI for Runwork - develop, preview, and deploy Runwork apps"
  homepage "https://www.runwork.ai"
  version "0.31.0"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/runwork-ai/cli/releases/download/v0.31.0/runwork-darwin-arm64.tar.gz"
      sha256 "6a37fed4c258529dfaae9dca4c5ead5b3207e78351295fd61f6fafd7c566768d"
    else
      url "https://github.com/runwork-ai/cli/releases/download/v0.31.0/runwork-darwin-x64.tar.gz"
      sha256 "97f8739f94ec5768898157032be5969332305abd0a1ba74baca5b6d70fca6523"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/runwork-ai/cli/releases/download/v0.31.0/runwork-linux-arm64.tar.gz"
      sha256 "8e29786a20c0dd1f03efa2983cf4cef79ed567ee8608af20265702f193ecb82e"
    else
      url "https://github.com/runwork-ai/cli/releases/download/v0.31.0/runwork-linux-x64.tar.gz"
      sha256 "f92069eecd97710f0e09686883a354df59b90bd42d6649f1ff713e9f7dedfa64"
    end
  end

  def install
    bin.install Dir["runwork-*"].first => "runwork"
  end

  test do
    assert_match "runwork", shell_output("#{bin}/runwork --version")
  end
end
