cask "runwork-desktop" do
  version "0.34.0"

  if Hardware::CPU.arm?
    url "https://github.com/runwork-ai/desktop/releases/download/v0.34.0/Runwork_0.34.0_aarch64.dmg"
    sha256 "750e72cabe929859f4612d6243914b4e681add04872fd2ce5a164e1c774f63aa"
  else
    url "https://github.com/runwork-ai/desktop/releases/download/v0.34.0/Runwork_0.34.0_x64.dmg"
    sha256 "567bbf45a122268191e76cbc0656390b16170542db05bc0f412ebfd771954598"
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
