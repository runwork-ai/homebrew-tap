class Runwork < Formula
  desc "CLI for Runwork - develop, preview, and deploy Runwork apps"
  homepage "https://www.runwork.ai"
  version "0.10.1"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/runwork-ai/cli/releases/download/v0.10.1/runwork-darwin-arm64.tar.gz"
      sha256 "1031be57d4fa2f4f0f5e7f32044069b18164270ccca60d61e23c4fe430c5414f"
    else
      url "https://github.com/runwork-ai/cli/releases/download/v0.10.1/runwork-darwin-x64.tar.gz"
      sha256 "d2f8b1f8a7ccd0e02de52a14a42283ba1736953b8bf048f18a2e4e785cfc8b82"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/runwork-ai/cli/releases/download/v0.10.1/runwork-linux-arm64.tar.gz"
      sha256 "dce715b3cf1eba43668961d2be0cf6b0721f237b8a36f355dea30b93bec87395"
    else
      url "https://github.com/runwork-ai/cli/releases/download/v0.10.1/runwork-linux-x64.tar.gz"
      sha256 "ccef8c7c26445683a9a57cd347c6f49a71703f9aa6bb7b4d741ab04b4d54754f"
    end
  end

  def install
    bin.install Dir["runwork-*"].first => "runwork"
  end

  test do
    assert_match "runwork", shell_output("#{bin}/runwork --version")
  end
end
