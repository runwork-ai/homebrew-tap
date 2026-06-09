cask "runwork-desktop" do
  version "0.11.2"

  if Hardware::CPU.arm?
    url "https://github.com/runwork-ai/desktop/releases/download/v0.11.2/Runwork_0.11.2_aarch64.dmg"
    sha256 "a8eab045c680b468094545b8b840eea9c9b86ac75d6346d624620389064cc8bc"
  else
    url "https://github.com/runwork-ai/desktop/releases/download/v0.11.2/Runwork_0.11.2_x64.dmg"
    sha256 "fb45ca4d8aea77f5fa2b9ebd0492bdf63e08e4cfa2015add367c9a968efd0354"
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
