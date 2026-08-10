cask "runwork-desktop" do
  version "0.15.2"

  if Hardware::CPU.arm?
    url "https://github.com/runwork-ai/desktop/releases/download/v0.15.2/Runwork_0.15.2_aarch64.dmg"
    sha256 "a08d8233e6de6f5e74d98821dd87fa5887d270529cf5c49f756ffd8af64b3c69"
  else
    url "https://github.com/runwork-ai/desktop/releases/download/v0.15.2/Runwork_0.15.2_x64.dmg"
    sha256 "92ff4c2991657bbacab5bc6b246377a2d1d1a5c39547132a6a332abf369bf76f"
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
