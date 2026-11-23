class Runwork < Formula
  desc "CLI for Runwork - develop, preview, and deploy Runwork apps"
  homepage "https://www.runwork.ai"
  version "0.37.0"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/runwork-ai/cli/releases/download/v0.37.0/runwork-darwin-arm64.tar.gz"
      sha256 "c61c91c55d8f50d2d8c8ad654cb9a815e65b6d4ddd90ff68df155936c6c79b39"
    else
      url "https://github.com/runwork-ai/cli/releases/download/v0.37.0/runwork-darwin-x64.tar.gz"
      sha256 "4e53be2c21f656644f3fb1e18d82346a5c889aa4cc31cc4e780b85c8cca64545"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/runwork-ai/cli/releases/download/v0.37.0/runwork-linux-arm64.tar.gz"
      sha256 "289873764448db0ad1dd3b5272c1810be7a4c38ae80924b035006804875f4320"
    else
      url "https://github.com/runwork-ai/cli/releases/download/v0.37.0/runwork-linux-x64.tar.gz"
      sha256 "4bc3d3150856cd9f2772a514e5883ff50f80bfed86c7b0d742ae6398a98c3c0a"
    end
  end

  def install
    bin.install Dir["runwork-*"].first => "runwork"
  end

  test do
    assert_match "runwork", shell_output("#{bin}/runwork --version")
  end
end
