cask "runwork-desktop" do
  version "0.21.7"

  if Hardware::CPU.arm?
    url "https://github.com/runwork-ai/desktop/releases/download/v0.21.7/Runwork_0.21.7_aarch64.dmg"
    sha256 "6d32f2e15218599b49bd532cad77f09c50a1c6f4fa3615ffc1bb10b2a5924f79"
  else
    url "https://github.com/runwork-ai/desktop/releases/download/v0.21.7/Runwork_0.21.7_x64.dmg"
    sha256 "ba02c1a8a7dfd37ad1b0f4b73166c6838d92e6b527468e7c059dbae56db43ad7"
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
