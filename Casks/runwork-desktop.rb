cask "runwork-desktop" do
  version "0.31.0"

  if Hardware::CPU.arm?
    url "https://github.com/runwork-ai/desktop/releases/download/v0.31.0/Runwork_0.31.0_aarch64.dmg"
    sha256 "c8b962444f0d4c51a1e69671edd04d7de3bc5b5eed1b5f24d85c24f536d9684b"
  else
    url "https://github.com/runwork-ai/desktop/releases/download/v0.31.0/Runwork_0.31.0_x64.dmg"
    sha256 "29f78044411a51fd03468d720ccb65c966ff71e34bd930844cf244ad0b094e31"
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
