cask "runwork-desktop" do
  version "0.14.0"

  if Hardware::CPU.arm?
    url "https://github.com/runwork-ai/desktop/releases/download/v0.14.0/Runwork_0.14.0_aarch64.dmg"
    sha256 "fd85172080f01c26e00ca8d2129a5555304bb41875a064f5507e8379b780faf0"
  else
    url "https://github.com/runwork-ai/desktop/releases/download/v0.14.0/Runwork_0.14.0_x64.dmg"
    sha256 "457853a6fc8ebc9f6117ab0024f036bf1b0fd832ab20d127c5896aa273a2fc84"
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
