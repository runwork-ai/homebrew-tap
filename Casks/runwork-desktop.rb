cask "runwork-desktop" do
  version "0.4.5"

  if Hardware::CPU.arm?
    url "https://github.com/runwork-ai/desktop/releases/download/v0.4.5/Runwork_0.4.5_aarch64.dmg"
    sha256 "e198b8f0d2c52c4f5c1f7202fa38635a3d111605019babc7dfd893836e6cbae7"
  else
    url "https://github.com/runwork-ai/desktop/releases/download/v0.4.5/Runwork_0.4.5_x64.dmg"
    sha256 "fa5fa601e9b32e5f9e0f2dddfc95f93bfcb0247dc223ffd3133f672ddfc059db"
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
