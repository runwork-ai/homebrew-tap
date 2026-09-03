cask "runwork-desktop" do
  version "0.23.4"

  if Hardware::CPU.arm?
    url "https://github.com/runwork-ai/desktop/releases/download/v0.23.4/Runwork_0.23.4_aarch64.dmg"
    sha256 "4fff1bf5b6619c3bb8abbe08e1944ebc6c7291323e0706ba11e7147d79e1ca8f"
  else
    url "https://github.com/runwork-ai/desktop/releases/download/v0.23.4/Runwork_0.23.4_x64.dmg"
    sha256 "fae270f29b3ad454a239849168f9dab9986f29a94a138f46c8a292428327e003"
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
