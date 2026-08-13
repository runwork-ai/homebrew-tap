cask "runwork-desktop" do
  version "0.17.1"

  if Hardware::CPU.arm?
    url "https://github.com/runwork-ai/desktop/releases/download/v0.17.1/Runwork_0.17.1_aarch64.dmg"
    sha256 "75bac106d039a4fa2b23da0960b5b8c922c8dc789967c2d429501b9001525bf6"
  else
    url "https://github.com/runwork-ai/desktop/releases/download/v0.17.1/Runwork_0.17.1_x64.dmg"
    sha256 "931b1af5d5f0c079a1f68cec46546a0b320712fdaecd3d162b5b9acded8cf9c0"
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
