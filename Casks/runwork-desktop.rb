cask "runwork-desktop" do
  version "0.25.1"

  if Hardware::CPU.arm?
    url "https://github.com/runwork-ai/desktop/releases/download/v0.25.1/Runwork_0.25.1_aarch64.dmg"
    sha256 "f9d0f8aa277ad25fcbe450c9afa53175d6965283444b67b7813cb69086b804a4"
  else
    url "https://github.com/runwork-ai/desktop/releases/download/v0.25.1/Runwork_0.25.1_x64.dmg"
    sha256 "6cb78871e4871b19bb76d9306d4d8859214f7374928e4c6bf030a43714555990"
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
