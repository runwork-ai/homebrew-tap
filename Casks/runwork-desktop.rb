cask "runwork-desktop" do
  version "0.22.0"

  if Hardware::CPU.arm?
    url "https://github.com/runwork-ai/desktop/releases/download/v0.22.0/Runwork_0.22.0_aarch64.dmg"
    sha256 "cef863fd908057c07fec3c504d15d9c0f73c13b5118c7a1fbcedb625b1935066"
  else
    url "https://github.com/runwork-ai/desktop/releases/download/v0.22.0/Runwork_0.22.0_x64.dmg"
    sha256 "47430f18fce5e6bf3780422d4ef6ed0d03095c1ac6ff2789678b2d6fb5a86ebd"
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
