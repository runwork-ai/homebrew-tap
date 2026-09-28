cask "runwork-desktop" do
  version "0.28.0"

  if Hardware::CPU.arm?
    url "https://github.com/runwork-ai/desktop/releases/download/v0.28.0/Runwork_0.28.0_aarch64.dmg"
    sha256 "aa4e1c06526eb71748a16743fd6394bca8c285600ed94f2c7538ae7648f4ac76"
  else
    url "https://github.com/runwork-ai/desktop/releases/download/v0.28.0/Runwork_0.28.0_x64.dmg"
    sha256 "48518c5c12bc698e1fa02cb4580c028ec03fa2f404503e8ccac933bc14f2c207"
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
