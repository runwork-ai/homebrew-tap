cask "runwork-desktop" do
  version "0.27.0"

  if Hardware::CPU.arm?
    url "https://github.com/runwork-ai/desktop/releases/download/v0.27.0/Runwork_0.27.0_aarch64.dmg"
    sha256 "b5ddc20d718ca43e379ff425a5f9d983765567e52e1965cd26f7cd53e5ea1391"
  else
    url "https://github.com/runwork-ai/desktop/releases/download/v0.27.0/Runwork_0.27.0_x64.dmg"
    sha256 "85f8686a1ab8046cd9b1c8cf18bfd83a2ddca917d8c9b3ff6e1286a7b9a1aad7"
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
