cask "runwork-desktop" do
  version "0.24.0"

  if Hardware::CPU.arm?
    url "https://github.com/runwork-ai/desktop/releases/download/v0.24.0/Runwork_0.24.0_aarch64.dmg"
    sha256 "de03f7a585044b9d608013d348c34f2f4895a7dbaf3d3ab63424f03738517d95"
  else
    url "https://github.com/runwork-ai/desktop/releases/download/v0.24.0/Runwork_0.24.0_x64.dmg"
    sha256 "7ddeb2ff5234df41d77955678b3b5a45565dbcc271117aab1de2559bf1bdfea5"
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
