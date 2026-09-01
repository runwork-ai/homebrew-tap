cask "runwork-desktop" do
  version "0.22.3"

  if Hardware::CPU.arm?
    url "https://github.com/runwork-ai/desktop/releases/download/v0.22.3/Runwork_0.22.3_aarch64.dmg"
    sha256 "19d307fd3ca3d43bdb457c45e3ce4700275149b6284a028c0316468d1f9b6722"
  else
    url "https://github.com/runwork-ai/desktop/releases/download/v0.22.3/Runwork_0.22.3_x64.dmg"
    sha256 "46635173c2831750287d0731c69ae0984d7564848cbf307e2a36c2213f8426d6"
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
