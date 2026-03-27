class Runwork < Formula
  desc "CLI for Runwork - develop, preview, and deploy Runwork apps"
  homepage "https://www.runwork.ai"
  version "0.5.1"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/runwork-ai/cli/releases/download/v0.5.1/runwork-darwin-arm64.tar.gz"
      sha256 "611d16eca5ad6ba3fcd7185f018bffc769749f3955f91866ec0cb360b5e32be5"
    else
      url "https://github.com/runwork-ai/cli/releases/download/v0.5.1/runwork-darwin-x64.tar.gz"
      sha256 "a2b5dab7a86ed50ca094bd6f58635a35ee0c5f3897e2d05bb62cd0717c08a232"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/runwork-ai/cli/releases/download/v0.5.1/runwork-linux-arm64.tar.gz"
      sha256 "edbe956b9d489970e288537d3728fc1922898684a41fe5ff277027297a133649"
    else
      url "https://github.com/runwork-ai/cli/releases/download/v0.5.1/runwork-linux-x64.tar.gz"
      sha256 "d3b905f46335b74232fdd0f96603f4f744fb4672df1fe9c55fc5a06b64905e70"
    end
  end

  def install
    bin.install Dir["runwork-*"].first => "runwork"
  end

  test do
    assert_match "runwork", shell_output("#{bin}/runwork --version")
  end
end
