cask "runwork-desktop" do
  version "0.10.0"

  if Hardware::CPU.arm?
    url "https://github.com/runwork-ai/desktop/releases/download/v0.10.0/Runwork_0.10.0_aarch64.dmg"
    sha256 "11b2e0efc9ead623168d73e4ced004dc019e8b9f404929e79e848f21156497ee"
  else
    url "https://github.com/runwork-ai/desktop/releases/download/v0.10.0/Runwork_0.10.0_x64.dmg"
    sha256 "fa9f5bb40291ba1ef848a77a1346600a06c957718bd53daadbc078b940c60364"
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
