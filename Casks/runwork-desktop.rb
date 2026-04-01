cask "runwork-desktop" do
  version "0.2.2"

  if Hardware::CPU.arm?
    url "https://github.com/runwork-ai/desktop/releases/download/v0.2.2/Runwork_0.2.2_aarch64.dmg"
    sha256 "e37587c8f418c9d587a31311b90cdc730f602d1cdb39493bb443fab04768e32d"
  else
    url "https://github.com/runwork-ai/desktop/releases/download/v0.2.2/Runwork_0.2.2_x64.dmg"
    sha256 "78ed2aa4aa7ab26ee486b37cbc4661440386c1085888741af8958900f39b0cd5"
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
