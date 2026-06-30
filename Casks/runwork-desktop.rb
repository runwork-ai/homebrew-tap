cask "runwork-desktop" do
  version "0.13.0"

  if Hardware::CPU.arm?
    url "https://github.com/runwork-ai/desktop/releases/download/v0.13.0/Runwork_0.13.0_aarch64.dmg"
    sha256 "7f85ba08e0f4cdbc62c49a5e9233a6a3307a478229f3181bc4522008ade40a32"
  else
    url "https://github.com/runwork-ai/desktop/releases/download/v0.13.0/Runwork_0.13.0_x64.dmg"
    sha256 "21469ca5da955aad24b01a8a58fcfb46031ca5f9f7264252ac736f4df5049a25"
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
