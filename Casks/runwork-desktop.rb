cask "runwork-desktop" do
  version "0.8.0"

  if Hardware::CPU.arm?
    url "https://github.com/runwork-ai/desktop/releases/download/v0.8.0/Runwork_0.8.0_aarch64.dmg"
    sha256 "01c6fdc706e867d1529561d7fc05858f225cbd01764b723c37f4557d7ef3bb22"
  else
    url "https://github.com/runwork-ai/desktop/releases/download/v0.8.0/Runwork_0.8.0_x64.dmg"
    sha256 "6f897b36b3a1e3957b6af774f006e24db8c96b839e83f554e8f7f72f5c056ded"
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
