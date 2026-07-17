cask "runwork-desktop" do
  version "0.14.2"

  if Hardware::CPU.arm?
    url "https://github.com/runwork-ai/desktop/releases/download/v0.14.2/Runwork_0.14.2_aarch64.dmg"
    sha256 "4169ab00ee2360c80e521ef5568c745f624e7559ff5556cfaca1b0b501724890"
  else
    url "https://github.com/runwork-ai/desktop/releases/download/v0.14.2/Runwork_0.14.2_x64.dmg"
    sha256 "c9109e6c5ef2dd1b6eb12ad05f1135aaffb1b4023504949ea439316da1da06a5"
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
