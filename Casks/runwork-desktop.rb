cask "runwork-desktop" do
  version "0.2.5"

  if Hardware::CPU.arm?
    url "https://github.com/runwork-ai/desktop/releases/download/v0.2.5/Runwork_0.2.5_aarch64.dmg"
    sha256 "35ff063ac83ca81f5020a1dc764b05208a2e2e8eafd8ffb03bb84ba11cdcf26e"
  else
    url "https://github.com/runwork-ai/desktop/releases/download/v0.2.5/Runwork_0.2.5_x64.dmg"
    sha256 "8051c791e5143e6e74773ef9cd2fde09c452e52c10dfd366f2c26a22dabb5663"
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
