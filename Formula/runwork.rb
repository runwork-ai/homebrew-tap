class Runwork < Formula
  desc "CLI for Runwork - develop, preview, and deploy Runwork apps"
  homepage "https://www.runwork.ai"
  version "0.4.1"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/runwork-ai/cli/releases/download/v0.4.1/runwork-darwin-arm64.tar.gz"
      sha256 "3747623b964ac2659bb703bea14ad7f0268f3de731ea41c1f6612b5a96f30714"
    else
      url "https://github.com/runwork-ai/cli/releases/download/v0.4.1/runwork-darwin-x64.tar.gz"
      sha256 "d9dd03b34373e6c3895e7d765bb3ce2d67e5ac96effaf5045e50fab377f96fe5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/runwork-ai/cli/releases/download/v0.4.1/runwork-linux-arm64.tar.gz"
      sha256 "dcf54d3c738f5bd91a59c644ee0061de7f57d7eae0669a4bf53188d1e50f2e3e"
    else
      url "https://github.com/runwork-ai/cli/releases/download/v0.4.1/runwork-linux-x64.tar.gz"
      sha256 "5e1ec74d81796fdd10038e2c3dcce8088aa34d28d4147b08116865bd766221cd"
    end
  end

  def install
    bin.install Dir["runwork-*"].first => "runwork"
  end

  test do
    assert_match "runwork", shell_output("#{bin}/runwork --version")
  end
end
