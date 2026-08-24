cask "runwork-desktop" do
  version "0.21.4"

  if Hardware::CPU.arm?
    url "https://github.com/runwork-ai/desktop/releases/download/v0.21.4/Runwork_0.21.4_aarch64.dmg"
    sha256 "e7f093dfe9273e6bf2da4a84e20e966da485426f1f5af730da2db2fd2c3cf3f1"
  else
    url "https://github.com/runwork-ai/desktop/releases/download/v0.21.4/Runwork_0.21.4_x64.dmg"
    sha256 "cd85c87f0d0f18e717637ce84d99304bb4e9a55b3f7ab2a4f501cca57031df34"
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
