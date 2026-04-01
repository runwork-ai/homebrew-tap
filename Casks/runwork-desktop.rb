cask "runwork-desktop" do
  version "0.1.0"

  if Hardware::CPU.arm?
    url "https://github.com/runwork-ai/desktop/releases/download/v0.1.0/Runwork_0.1.0_aarch64.dmg"
    sha256 "a23e187f63597e2c3d6eefd62bbf9a4430f03d18dd6bc11c86adbff3730f50fa"
  else
    url "https://github.com/runwork-ai/desktop/releases/download/v0.1.0/"
    sha256 ""
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
