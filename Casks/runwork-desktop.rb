cask "runwork-desktop" do
  version "0.6.1"

  if Hardware::CPU.arm?
    url "https://github.com/runwork-ai/desktop/releases/download/v0.6.1/Runwork_0.6.1_aarch64.dmg"
    sha256 "3aaed1eeb6e1ecb06636c6716fb39b5c3336531b7662e8d471c3b4b711b8c438"
  else
    url "https://github.com/runwork-ai/desktop/releases/download/v0.6.1/Runwork_0.6.1_x64.dmg"
    sha256 "e05193e10abda285a4992c91c5c7b8474da5580a21d7e5aa68c5e3202da77e37"
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
