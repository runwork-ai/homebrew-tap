cask "runwork-desktop" do
  version "0.2.3"

  if Hardware::CPU.arm?
    url "https://github.com/runwork-ai/desktop/releases/download/v0.2.3/Runwork_0.2.3_aarch64.dmg"
    sha256 "48c7918d0d11e45c6b8be24d4be431f912716e5e24da87bb3164396e0d5aed83"
  else
    url "https://github.com/runwork-ai/desktop/releases/download/v0.2.3/Runwork_0.2.3_x64.dmg"
    sha256 "b4507985cb6854789af23ee666d9f54f9190f1f5485587146d3b63d6c19ab6e2"
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
