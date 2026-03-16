class Runwork < Formula
  desc "CLI for Runwork - develop, preview, and deploy Runwork apps"
  homepage "https://www.runwork.ai"
  version "0.2.5"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/runwork-ai/cli/releases/download/v0.2.5/runwork-darwin-arm64.tar.gz"
      sha256 "1e4026ec5b3958cd0cd434113c1f67aa4155dd666d8ef2537d8fc89af44a02eb"
    else
      url "https://github.com/runwork-ai/cli/releases/download/v0.2.5/runwork-darwin-x64.tar.gz"
      sha256 "ecd0576ef37ba2213ca63c1d743856c12316ecee7fc45a484418754fffb28d2b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/runwork-ai/cli/releases/download/v0.2.5/runwork-linux-arm64.tar.gz"
      sha256 "47a4315b6c7f32f281c91cc0a8007e106669f82860f304d861496b1a16362365"
    else
      url "https://github.com/runwork-ai/cli/releases/download/v0.2.5/runwork-linux-x64.tar.gz"
      sha256 "58cab89c53b6c3ea2073f93347d5ebf86afa40b39e59114db94c2b2f41c74720"
    end
  end

  def install
    bin.install Dir["runwork-*"].first => "runwork"
  end

  test do
    assert_match "runwork", shell_output("#{bin}/runwork --version")
  end
end
