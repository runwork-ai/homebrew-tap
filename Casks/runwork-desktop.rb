cask "runwork-desktop" do
  version "0.6.0"

  if Hardware::CPU.arm?
    url "https://github.com/runwork-ai/desktop/releases/download/v0.6.0/Runwork_0.6.0_aarch64.dmg"
    sha256 "5020ed7911e0a512c0d0be71e3fc78e36a8d45ed083847f5cd4e5319c3bcbbe6"
  else
    url "https://github.com/runwork-ai/desktop/releases/download/v0.6.0/Runwork_0.6.0_x64.dmg"
    sha256 "512e2d7432a8a9537442d697cc38a6b101b82c2c46f74a98d688bb5889a27e85"
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
