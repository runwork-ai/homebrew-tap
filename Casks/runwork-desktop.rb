cask "runwork-desktop" do
  version "0.21.2"

  if Hardware::CPU.arm?
    url "https://github.com/runwork-ai/desktop/releases/download/v0.21.2/Runwork_0.21.2_aarch64.dmg"
    sha256 "3c0a5658b977020091ab51a33238396d789dc37d00c001e56c6d704614b77165"
  else
    url "https://github.com/runwork-ai/desktop/releases/download/v0.21.2/Runwork_0.21.2_x64.dmg"
    sha256 "7c9ef56ed1c17c0058ea0577eb9a716cf081ef901c1018c46c602934ca627561"
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
