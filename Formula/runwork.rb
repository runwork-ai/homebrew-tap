class Runwork < Formula
  desc "CLI for Runwork - develop, preview, and deploy Runwork apps"
  homepage "https://www.runwork.ai"
  version "0.39.2"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/runwork-ai/cli/releases/download/v0.39.2/runwork-darwin-arm64.tar.gz"
      sha256 "20bf479fc0a1d80534ee588f573810226fc849a48892031457711738d0d508d3"
    else
      url "https://github.com/runwork-ai/cli/releases/download/v0.39.2/runwork-darwin-x64.tar.gz"
      sha256 "f4b35298203b44ba8a6db4545ad8da8867e03fd075332414d76b7653099a11ce"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/runwork-ai/cli/releases/download/v0.39.2/runwork-linux-arm64.tar.gz"
      sha256 "c82ec2cdf9a579ebb4f78975ac82168d6ddd9a01c4d038fe85d8dabda184e836"
    else
      url "https://github.com/runwork-ai/cli/releases/download/v0.39.2/runwork-linux-x64.tar.gz"
      sha256 "baebcbd24d4de8c79d1dfc87c6d258ec12f4484b513d3d645ea6e3ff3dd8286c"
    end
  end

  def install
    bin.install Dir["runwork-*"].first => "runwork"
  end

  test do
    assert_match "runwork", shell_output("#{bin}/runwork --version")
  end
end
