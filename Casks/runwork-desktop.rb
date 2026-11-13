cask "runwork-desktop" do
  version "0.33.1"

  if Hardware::CPU.arm?
    url "https://github.com/runwork-ai/desktop/releases/download/v0.33.1/Runwork_0.33.1_aarch64.dmg"
    sha256 "0a50d264a9e4be21d8b703a32d4c82febc274d15d4bc1956a5f748a661207339"
  else
    url "https://github.com/runwork-ai/desktop/releases/download/v0.33.1/Runwork_0.33.1_x64.dmg"
    sha256 "cda913098dc05d1fe3fd0369cd5a429f23b3d800a26b78d915468c90de924b32"
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
