class Runwork < Formula
  desc "CLI for Runwork - develop, preview, and deploy Runwork apps"
  homepage "https://www.runwork.ai"
  version "0.27.1"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/runwork-ai/cli/releases/download/v0.27.1/runwork-darwin-arm64.tar.gz"
      sha256 "0780f75de9bd5e54f11eb553e5bfc14379a96f69e3bcbe92a2e5e7fc99f39c4e"
    else
      url "https://github.com/runwork-ai/cli/releases/download/v0.27.1/runwork-darwin-x64.tar.gz"
      sha256 "19fa46bb6593a31b70b941fc82f0b180e60542d8bfc290ef51ea0918f7ae8ea9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/runwork-ai/cli/releases/download/v0.27.1/runwork-linux-arm64.tar.gz"
      sha256 "d239989be05097df397f6cacfef14b3020ad0afdc913d831b9b191bad0c7cddf"
    else
      url "https://github.com/runwork-ai/cli/releases/download/v0.27.1/runwork-linux-x64.tar.gz"
      sha256 "2b26ecee45e1dda892426ef8a9985ae9c542964b5e03f683466643f2fca235c3"
    end
  end

  def install
    bin.install Dir["runwork-*"].first => "runwork"
  end

  test do
    assert_match "runwork", shell_output("#{bin}/runwork --version")
  end
end
