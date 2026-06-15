cask "runwork-desktop" do
  version "0.12.0"

  if Hardware::CPU.arm?
    url "https://github.com/runwork-ai/desktop/releases/download/v0.12.0/Runwork_0.12.0_aarch64.dmg"
    sha256 "ac45dd5f7905d44cdc3592f1449053cf1d81df50cf9596b44f8eabf08ebea91f"
  else
    url "https://github.com/runwork-ai/desktop/releases/download/v0.12.0/Runwork_0.12.0_x64.dmg"
    sha256 "1918b7b8d150cd911b5922f6c7722c8ed5dd5d6148a333a3b7ea206465fa3d88"
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
