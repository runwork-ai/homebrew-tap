cask "runwork-desktop" do
  version "0.5.4"

  if Hardware::CPU.arm?
    url "https://github.com/runwork-ai/desktop/releases/download/v0.5.4/Runwork_0.5.4_aarch64.dmg"
    sha256 "13c1a82fce6ae67d035e4630e94f9b8821ff08ebcfd1ed5202b801572544a160"
  else
    url "https://github.com/runwork-ai/desktop/releases/download/v0.5.4/Runwork_0.5.4_x64.dmg"
    sha256 "01efd15ec271be8e6384c332d22f86e7a1da1cc2870c0a9b66898d6a20159ccb"
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
