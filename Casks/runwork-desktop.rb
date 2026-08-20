cask "runwork-desktop" do
  version "0.21.0"

  if Hardware::CPU.arm?
    url "https://github.com/runwork-ai/desktop/releases/download/v0.21.0/Runwork_0.21.0_aarch64.dmg"
    sha256 "218ab71eb8e2bac86cc7059a40e6b0b80453c23043affd854524e00da565baab"
  else
    url "https://github.com/runwork-ai/desktop/releases/download/v0.21.0/Runwork_0.21.0_x64.dmg"
    sha256 "c63b9faafce5a9fe57feebcb5ccf1de8244d819f2f1ea5440f2a24b3bd2db00f"
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
