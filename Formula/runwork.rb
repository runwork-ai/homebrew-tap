class Runwork < Formula
  desc "CLI for Runwork - develop, preview, and deploy Runwork apps"
  homepage "https://www.runwork.ai"
  version "0.4.0"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/runwork-ai/cli/releases/download/v0.4.0/runwork-darwin-arm64.tar.gz"
      sha256 "94602648ba100625a6224e71ac5a63f9ed175f8e372a6cf41c2071a2cbfdc3fd"
    else
      url "https://github.com/runwork-ai/cli/releases/download/v0.4.0/runwork-darwin-x64.tar.gz"
      sha256 "2e92e297c8367e2091c825c24dfcf97c411ddb2b7cca455ee4b37e3876040a7e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/runwork-ai/cli/releases/download/v0.4.0/runwork-linux-arm64.tar.gz"
      sha256 "2573ef14ee43dc3fce4716d0fe51d0923c9bc2f5108a7c8789034835001e2764"
    else
      url "https://github.com/runwork-ai/cli/releases/download/v0.4.0/runwork-linux-x64.tar.gz"
      sha256 "92289e35331659784faf5d113a3a168b7349bfa91faf0b3af3d2893f9c97d5ab"
    end
  end

  def install
    bin.install Dir["runwork-*"].first => "runwork"
  end

  test do
    assert_match "runwork", shell_output("#{bin}/runwork --version")
  end
end
