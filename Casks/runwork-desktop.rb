cask "runwork-desktop" do
  version "0.17.1"

  if Hardware::CPU.arm?
    url "https://github.com/runwork-ai/desktop/releases/download/v0.17.1/Runwork_0.17.1_aarch64.dmg"
    sha256 "652bc75744f9ac4a1ff760228f42bce9249c4b61e0fefdc9658f44931123a591"
  else
    url "https://github.com/runwork-ai/desktop/releases/download/v0.17.1/Runwork_0.17.1_x64.dmg"
    sha256 "bd0004030ce56213222566dea52276273e97e45e2f321ef7e1abb161969bd4f8"
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
