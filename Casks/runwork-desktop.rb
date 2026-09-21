cask "runwork-desktop" do
  version "0.25.2"

  if Hardware::CPU.arm?
    url "https://github.com/runwork-ai/desktop/releases/download/v0.25.2/Runwork_0.25.2_aarch64.dmg"
    sha256 "5b41f6351895b6324eeb87770215579362d0406ba27744ea232a2ce0606a5f22"
  else
    url "https://github.com/runwork-ai/desktop/releases/download/v0.25.2/Runwork_0.25.2_x64.dmg"
    sha256 "6d49989ac8ed826799c8f9f4e1d49f82a2d432d64de366f01d8e3b316798ec6c"
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
