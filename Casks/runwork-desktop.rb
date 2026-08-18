cask "runwork-desktop" do
  version "0.19.2"

  if Hardware::CPU.arm?
    url "https://github.com/runwork-ai/desktop/releases/download/v0.19.2/Runwork_0.19.2_aarch64.dmg"
    sha256 "93f7a4700947b0708e6ab67e9eadd8654f39620629e23047d6b5ff35042c1770"
  else
    url "https://github.com/runwork-ai/desktop/releases/download/v0.19.2/Runwork_0.19.2_x64.dmg"
    sha256 "c7687478b0cecb81922f5721b5347c42942bccb386e01c40d89057f8314dd9fc"
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
