cask "runwork-desktop" do
  version "0.16.1"

  if Hardware::CPU.arm?
    url "https://github.com/runwork-ai/desktop/releases/download/v0.16.1/Runwork_0.16.1_aarch64.dmg"
    sha256 "700afc456ee5c0f4f8e1599c318e7415402b0d8587a86c80e43be4f8836a423a"
  else
    url "https://github.com/runwork-ai/desktop/releases/download/v0.16.1/Runwork_0.16.1_x64.dmg"
    sha256 "e88670bab8987e17f57338a32c6ee9830b0107d537f05f7d61989af26d255305"
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
