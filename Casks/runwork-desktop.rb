cask "runwork-desktop" do
  version "0.9.1"

  if Hardware::CPU.arm?
    url "https://github.com/runwork-ai/desktop/releases/download/v0.9.1/Runwork_0.9.1_aarch64.dmg"
    sha256 "729f5ef283c8ea10523a158ef527491393c7f14f9088cdb67e895fb81a2b5cac"
  else
    url "https://github.com/runwork-ai/desktop/releases/download/v0.9.1/Runwork_0.9.1_x64.dmg"
    sha256 "7b0fd72012f1290281a3053c1facfa56f944e33066c506f7772024e7c0b25568"
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
