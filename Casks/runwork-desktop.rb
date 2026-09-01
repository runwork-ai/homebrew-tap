cask "runwork-desktop" do
  version "0.23.0"

  if Hardware::CPU.arm?
    url "https://github.com/runwork-ai/desktop/releases/download/v0.23.0/Runwork_0.23.0_aarch64.dmg"
    sha256 "ecd6589268177741a674817d62887bace3fa121bc8dc0e5ba9f8eb3b614db034"
  else
    url "https://github.com/runwork-ai/desktop/releases/download/v0.23.0/Runwork_0.23.0_x64.dmg"
    sha256 "2b866ccff2cd2a4229c15a27b119c13be1b3767dc37300359e118375b15f1ba7"
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
