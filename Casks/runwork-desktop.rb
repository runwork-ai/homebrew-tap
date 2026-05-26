cask "runwork-desktop" do
  version "0.9.0"

  if Hardware::CPU.arm?
    url "https://github.com/runwork-ai/desktop/releases/download/v0.9.0/Runwork_0.9.0_aarch64.dmg"
    sha256 "2330e9a786a3a13c8f836b280000d1b8dbb00a9618a6943798cbed842cc14600"
  else
    url "https://github.com/runwork-ai/desktop/releases/download/v0.9.0/Runwork_0.9.0_x64.dmg"
    sha256 "874b05627b0b02b6742be2ce49bfd305782b7efa4c0a970d63588a6f84934749"
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
