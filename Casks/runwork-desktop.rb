cask "runwork-desktop" do
  version "0.17.1"

  if Hardware::CPU.arm?
    url "https://github.com/runwork-ai/desktop/releases/download/v0.17.1/Runwork_0.17.1_aarch64.dmg"
    sha256 "25de0ea4503cd1a7066f0bc9b6d7f33fe9b9bd581d60d3fad7935a4afe39edda"
  else
    url "https://github.com/runwork-ai/desktop/releases/download/v0.17.1/Runwork_0.17.1_x64.dmg"
    sha256 "15832d651a990d102991e701b9e92fa92d4ee861ba966629d2d1cae49aad49bb"
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
