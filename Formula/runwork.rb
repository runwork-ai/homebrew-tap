class Runwork < Formula
  desc "CLI for Runwork - develop, preview, and deploy Runwork apps"
  homepage "https://www.runwork.ai"
  version "0.13.3"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/runwork-ai/cli/releases/download/v0.13.3/runwork-darwin-arm64.tar.gz"
      sha256 "67e7fffbcc848aecc24cb0f0a21cff59b6c6b9306bb22def3dd4960769f0c0b5"
    else
      url "https://github.com/runwork-ai/cli/releases/download/v0.13.3/runwork-darwin-x64.tar.gz"
      sha256 "328aa03c45771b4ce19d58e171d7654bd5d4ae57d90dc9db1ac55b44d763d972"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/runwork-ai/cli/releases/download/v0.13.3/runwork-linux-arm64.tar.gz"
      sha256 "2779221428b8eab1e904bf4d34fa30c419780315b42b633ee6f59003955ff543"
    else
      url "https://github.com/runwork-ai/cli/releases/download/v0.13.3/runwork-linux-x64.tar.gz"
      sha256 "bbfce191a33f7db31586ac19cfc5e435e58703c8c6d0ff7db3e0f93fa6b2d8de"
    end
  end

  def install
    bin.install Dir["runwork-*"].first => "runwork"
  end

  test do
    assert_match "runwork", shell_output("#{bin}/runwork --version")
  end
end
