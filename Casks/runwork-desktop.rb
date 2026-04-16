cask "runwork-desktop" do
  version "0.5.0"

  if Hardware::CPU.arm?
    url "https://github.com/runwork-ai/desktop/releases/download/v0.5.0/Runwork_0.5.0_aarch64.dmg"
    sha256 "7a504a68084c4862d22d4157712f01a33f76120c52873c294c4cc2679b800548"
  else
    url "https://github.com/runwork-ai/desktop/releases/download/v0.5.0/Runwork_0.5.0_x64.dmg"
    sha256 "7790ddcfd97d0402bb6a9aa3ace2a2b7217cdd65e281a14a73f5c939617c47a4"
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
