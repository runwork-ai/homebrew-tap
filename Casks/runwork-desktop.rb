cask "runwork-desktop" do
  version "0.6.1"

  if Hardware::CPU.arm?
    url "https://github.com/runwork-ai/desktop/releases/download/v0.6.1/Runwork_0.6.0_aarch64.dmg"
    sha256 "1783932fe03814834effad8d54d5e70fc6285320d328e2c659ea0a70c11aa493"
  else
    url "https://github.com/runwork-ai/desktop/releases/download/v0.6.1/Runwork_0.6.0_x64.dmg"
    sha256 "735f0beee370ace942a8b5b02a33579fae3316ecc6f5ecf45ccf25ceeebc655d"
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
