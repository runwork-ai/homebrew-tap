cask "runwork-desktop" do
  version "0.14.3"

  if Hardware::CPU.arm?
    url "https://github.com/runwork-ai/desktop/releases/download/v0.14.3/Runwork_0.14.2_aarch64.dmg"
    sha256 "72bb94994c89fa33b29208adb5be848ea3828fd511370bf36480417c0a400d4e"
  else
    url "https://github.com/runwork-ai/desktop/releases/download/v0.14.3/Runwork_0.14.2_x64.dmg"
    sha256 "74a08b68cb4f768c610cf449fe7efa7814b3b53f7a69b1bac78702276a27bab9"
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
