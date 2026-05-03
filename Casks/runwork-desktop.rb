cask "runwork-desktop" do
  version "0.5.3"

  if Hardware::CPU.arm?
    url "https://github.com/runwork-ai/desktop/releases/download/v0.5.3/Runwork_0.5.3_aarch64.dmg"
    sha256 "ff4ccfa365d7f193480784bf2cc48dcc1436172bb45e0465012ceffe8f919c55"
  else
    url "https://github.com/runwork-ai/desktop/releases/download/v0.5.3/Runwork_0.5.3_x64.dmg"
    sha256 "b87dea6ea7d2dac60b4bef55515f9f375a1262265714a5eeb45a6c7bb7d8971d"
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
