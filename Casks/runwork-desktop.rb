cask "runwork-desktop" do
  version "0.15.1"

  if Hardware::CPU.arm?
    url "https://github.com/runwork-ai/desktop/releases/download/v0.15.1/Runwork_0.15.1_aarch64.dmg"
    sha256 "7fcb09e357c196571b2c6766b2e37b6ecbdcc070e19b917f7c3bec3c9fd29c67"
  else
    url "https://github.com/runwork-ai/desktop/releases/download/v0.15.1/Runwork_0.15.1_x64.dmg"
    sha256 "4805b9729dac43d4b6e32eb448f503318b0321a4dc33b452f4515d19d0436a9b"
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
