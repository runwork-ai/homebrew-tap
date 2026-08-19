cask "runwork-desktop" do
  version "0.20.0"

  if Hardware::CPU.arm?
    url "https://github.com/runwork-ai/desktop/releases/download/v0.20.0/Runwork_0.20.0_aarch64.dmg"
    sha256 "1103da3f188df61b5db0fbe33a02a34680fe88d02dddc75c5b254316a2b9eae1"
  else
    url "https://github.com/runwork-ai/desktop/releases/download/v0.20.0/Runwork_0.20.0_x64.dmg"
    sha256 "1dee711f97965613ba54369a1fc305f916760acbf2571d2eab332534ab0c0c57"
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
