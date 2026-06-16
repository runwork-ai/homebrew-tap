cask "runwork-desktop" do
  version "0.12.1"

  if Hardware::CPU.arm?
    url "https://github.com/runwork-ai/desktop/releases/download/v0.12.1/Runwork_0.12.1_aarch64.dmg"
    sha256 "c9d193b55b542a8c3d4ad9e892b8eb0e52fdf22ff64753547e12093e9df34a09"
  else
    url "https://github.com/runwork-ai/desktop/releases/download/v0.12.1/Runwork_0.12.1_x64.dmg"
    sha256 "69b63eec34e1b9d2f78c9ed9723874cf450e75098501430f8c9fb16efa8a8d3f"
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
