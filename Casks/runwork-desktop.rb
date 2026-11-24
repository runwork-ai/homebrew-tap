cask "runwork-desktop" do
  version "0.35.0"

  if Hardware::CPU.arm?
    url "https://github.com/runwork-ai/desktop/releases/download/v0.35.0/Runwork_0.35.0_aarch64.dmg"
    sha256 "67510dca930c739771e0822e38f0d404ee925e7a1b1c4db9d634a77efd9615f8"
  else
    url "https://github.com/runwork-ai/desktop/releases/download/v0.35.0/Runwork_0.35.0_x64.dmg"
    sha256 "cb9c555e179d9137d5573844541333b82a2f08d1a556d0289f9ee87fbe6a190a"
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
