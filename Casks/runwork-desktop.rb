cask "runwork-desktop" do
  version "0.15.0"

  if Hardware::CPU.arm?
    url "https://github.com/runwork-ai/desktop/releases/download/v0.15.0/Runwork_0.15.0_aarch64.dmg"
    sha256 "ac3f6a6da329317d236f1da3d4aeaa8513987a4ed8edb02357d21e960535a52c"
  else
    url "https://github.com/runwork-ai/desktop/releases/download/v0.15.0/Runwork_0.15.0_x64.dmg"
    sha256 "edc3490666971b71e177e74f7cc6e577e319a70a4311cf45dd5ad60ab91087f8"
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
