class Runwork < Formula
  desc "CLI for Runwork - develop, preview, and deploy Runwork apps"
  homepage "https://www.runwork.ai"
  version "0.27.2"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/runwork-ai/cli/releases/download/v0.27.2/runwork-darwin-arm64.tar.gz"
      sha256 "fb0be208cb030734941413856ad0507cf4bc05976bd602e03612f754dd97c0cd"
    else
      url "https://github.com/runwork-ai/cli/releases/download/v0.27.2/runwork-darwin-x64.tar.gz"
      sha256 "2287e1edf550626231f91de7d115927cbed5bffe8385122fbf82ae9ff7a3fce0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/runwork-ai/cli/releases/download/v0.27.2/runwork-linux-arm64.tar.gz"
      sha256 "f4a1e5c1851762543f6fdbadf5da4f4465a942f682a6108f55d626e96eccd7dc"
    else
      url "https://github.com/runwork-ai/cli/releases/download/v0.27.2/runwork-linux-x64.tar.gz"
      sha256 "da923ccc5fb3e00046df094098f18a27f13e8518a3b9937a995cf0b207fa1b62"
    end
  end

  def install
    bin.install Dir["runwork-*"].first => "runwork"
  end

  test do
    assert_match "runwork", shell_output("#{bin}/runwork --version")
  end
end
