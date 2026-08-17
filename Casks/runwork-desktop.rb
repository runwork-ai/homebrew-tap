cask "runwork-desktop" do
  version "0.19.0"

  if Hardware::CPU.arm?
    url "https://github.com/runwork-ai/desktop/releases/download/v0.19.0/Runwork_0.19.0_aarch64.dmg"
    sha256 "20d3557c72d93d8994a291b68cfae8416a988f80bf4bf0d5d43da99bf951d45d"
  else
    url "https://github.com/runwork-ai/desktop/releases/download/v0.19.0/Runwork_0.19.0_x64.dmg"
    sha256 "9b3cc6cf97b8442d537e74bd7f3cc10d69b281e0ce9d07f08162a376eb0eaefe"
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
