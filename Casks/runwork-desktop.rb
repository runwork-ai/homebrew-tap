cask "runwork-desktop" do
  version "0.23.5"

  if Hardware::CPU.arm?
    url "https://github.com/runwork-ai/desktop/releases/download/v0.23.5/Runwork_0.23.5_aarch64.dmg"
    sha256 "85ca0a6bb901b2e3152ba6b483f09d381d3c1436317c7be20a2f756cc4380d38"
  else
    url "https://github.com/runwork-ai/desktop/releases/download/v0.23.5/Runwork_0.23.5_x64.dmg"
    sha256 "11f49d262a89b1dce07e2777b26039f535533268487386b2f3612bc4dfe5a175"
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
