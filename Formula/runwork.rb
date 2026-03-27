class Runwork < Formula
  desc "CLI for Runwork - develop, preview, and deploy Runwork apps"
  homepage "https://www.runwork.ai"
  version "0.5.0"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/runwork-ai/cli/releases/download/v0.5.0/runwork-darwin-arm64.tar.gz"
      sha256 "b02013196c93225566620564863249803b7650d755d4e08ab9c34379410692df"
    else
      url "https://github.com/runwork-ai/cli/releases/download/v0.5.0/runwork-darwin-x64.tar.gz"
      sha256 "fafd974f5404c2f2d6800576630839a5e82196343168cddf0334731f8f517b23"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/runwork-ai/cli/releases/download/v0.5.0/runwork-linux-arm64.tar.gz"
      sha256 "158d7233fe7cb72798feca83879ea19e36957648381a3fcb0626dc69fccb51f1"
    else
      url "https://github.com/runwork-ai/cli/releases/download/v0.5.0/runwork-linux-x64.tar.gz"
      sha256 "6a0c26bb50467d0a23f99017dcebb2349812467bfa886fae111101a45f2d43b0"
    end
  end

  def install
    bin.install Dir["runwork-*"].first => "runwork"
  end

  test do
    assert_match "runwork", shell_output("#{bin}/runwork --version")
  end
end
