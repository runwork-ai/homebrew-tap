cask "runwork-desktop" do
  version "0.20.1"

  if Hardware::CPU.arm?
    url "https://github.com/runwork-ai/desktop/releases/download/v0.20.1/Runwork_0.20.1_aarch64.dmg"
    sha256 "4af2a1753eff5a3bbcc2c8316d34638f5ea9b9a5d10db071f75f07bf4e65dfc4"
  else
    url "https://github.com/runwork-ai/desktop/releases/download/v0.20.1/Runwork_0.20.1_x64.dmg"
    sha256 "8c1643d27645e386c9f68d69a0403968cb013e2413e884df3af3287c798c88b7"
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
