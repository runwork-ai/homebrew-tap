cask "runwork-desktop" do
  version "0.26.0"

  if Hardware::CPU.arm?
    url "https://github.com/runwork-ai/desktop/releases/download/v0.26.0/Runwork_0.26.0_aarch64.dmg"
    sha256 "ab11b2d829c9d15885b8704552491d25435090d9e5248187980195d8b7a491be"
  else
    url "https://github.com/runwork-ai/desktop/releases/download/v0.26.0/Runwork_0.26.0_x64.dmg"
    sha256 "fdc783f25f8c753d62ec60ad2bc027ec50185a6712be999c1e5ba210428dc11d"
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
