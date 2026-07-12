cask "runwork-desktop" do
  version "0.13.1"

  if Hardware::CPU.arm?
    url "https://github.com/runwork-ai/desktop/releases/download/v0.13.1/Runwork_0.13.1_aarch64.dmg"
    sha256 "d611100379a6db917c29b6bf4af2b1104087a7f927b9c42956369700cacab3fa"
  else
    url "https://github.com/runwork-ai/desktop/releases/download/v0.13.1/Runwork_0.13.1_x64.dmg"
    sha256 "3efe4b81691c61034b1d67d369a901e8d57ee67235efff26756da43b6f8f3fe0"
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
