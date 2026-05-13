cask "runwork-desktop" do
  version "0.7.0"

  if Hardware::CPU.arm?
    url "https://github.com/runwork-ai/desktop/releases/download/v0.7.0/Runwork_0.7.0_aarch64.dmg"
    sha256 "80c33664b4493a56343cbc14d3c93b110536fe72a20ef5f625348a5657c5602c"
  else
    url "https://github.com/runwork-ai/desktop/releases/download/v0.7.0/Runwork_0.7.0_x64.dmg"
    sha256 "823870d00c8ed088d1d127e634eac28401dcb3f946bf96b472dfb4fa982840a3"
  end

  name "Runwork"
  desc "Desktop companion for Runwork, the AI-powered development platform"
  homepage "https://www.runwork.ai"

  app "Runwork.app"

  zap trash: [
    "~/Library/Application Support/ai.runwork.desktop",
    "~/Library/Caches/ai.runwork.desktop",
    "~/Library/Preferences/ai.runwork.desktop.plist",
  ]
end
