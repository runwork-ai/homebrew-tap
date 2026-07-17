cask "runwork-desktop" do
  version "0.14.1"

  if Hardware::CPU.arm?
    url "https://github.com/runwork-ai/desktop/releases/download/v0.14.1/Runwork_0.14.1_aarch64.dmg"
    sha256 "24f95d4aa79316f7ffe2a2f1382b0ae9fb67bdf5a85627a685fa4da42c4cdc07"
  else
    url "https://github.com/runwork-ai/desktop/releases/download/v0.14.1/Runwork_0.14.1_x64.dmg"
    sha256 "3f9b717cb9a1134940cce9073f5cbe47b7cef87000e2f27e2fc5a513461d2346"
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
