cask "runwork-desktop" do
  version "0.21.1"

  if Hardware::CPU.arm?
    url "https://github.com/runwork-ai/desktop/releases/download/v0.21.1/Runwork_0.21.1_aarch64.dmg"
    sha256 "8bdcd74a9b85258c7fdddb6427f11f156100c233891d66983849ec3e8f62b1e9"
  else
    url "https://github.com/runwork-ai/desktop/releases/download/v0.21.1/Runwork_0.21.1_x64.dmg"
    sha256 "4d598243db16d9c0f6d74fe60b7405f04f4915cbd52d6e89af9a0d98924db8ce"
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
