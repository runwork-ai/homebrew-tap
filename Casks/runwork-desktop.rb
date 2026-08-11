cask "runwork-desktop" do
  version "0.16.0"

  if Hardware::CPU.arm?
    url "https://github.com/runwork-ai/desktop/releases/download/v0.16.0/Runwork_0.16.0_aarch64.dmg"
    sha256 "d73aa2963bb4167d7236a4e35e9361b5ee8dbe985804023d67a0fd343196310a"
  else
    url "https://github.com/runwork-ai/desktop/releases/download/v0.16.0/Runwork_0.16.0_x64.dmg"
    sha256 "4fd8cd8b37fa9e2bde3a8f7b97a25878fd567d07b17964df0e07dde847345148"
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
