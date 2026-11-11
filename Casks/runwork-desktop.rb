cask "runwork-desktop" do
  version "0.33.0"

  if Hardware::CPU.arm?
    url "https://github.com/runwork-ai/desktop/releases/download/v0.33.0/Runwork_0.33.0_aarch64.dmg"
    sha256 "1671f2092e25fa195d55870b771b4a5a485a15ad8d58413f3f436c995a45c981"
  else
    url "https://github.com/runwork-ai/desktop/releases/download/v0.33.0/Runwork_0.33.0_x64.dmg"
    sha256 "39d5ab0460dcbf84d363a2f3b51560d1a63c0405c85c3a533f3090c593a48dab"
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
