class Runwork < Formula
  desc "CLI for Runwork - develop, preview, and deploy Runwork apps"
  homepage "https://www.runwork.ai"
  version "0.2.4"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/runwork-ai/cli/releases/download/v0.2.4/runwork-darwin-arm64.tar.gz"
      sha256 "68a89b188042103ab544a9ed07735314cd34b85ff3c85f8872b19563a55fdb11"
    else
      url "https://github.com/runwork-ai/cli/releases/download/v0.2.4/runwork-darwin-x64.tar.gz"
      sha256 "2f88cb5c01d8c839394a9c022abcfce4bc415f5ad0022e3cf9140098005caae2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/runwork-ai/cli/releases/download/v0.2.4/runwork-linux-arm64.tar.gz"
      sha256 "20c8a0e9662e94ec71a7b2a42c5994f732965e388a8e6bce67452eecc37986dd"
    else
      url "https://github.com/runwork-ai/cli/releases/download/v0.2.4/runwork-linux-x64.tar.gz"
      sha256 "635af401825411994bc028e54988e802976ea9eef254072f7f2a1a6b3be7e623"
    end
  end

  def install
    bin.install Dir["runwork-*"].first => "runwork"
  end

  test do
    assert_match "runwork", shell_output("#{bin}/runwork --version")
  end
end
