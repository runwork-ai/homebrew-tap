cask "runwork-desktop" do
  version "0.23.1"

  if Hardware::CPU.arm?
    url "https://github.com/runwork-ai/desktop/releases/download/v0.23.1/Runwork_0.23.1_aarch64.dmg"
    sha256 "44b2b35a030bc6f2f9fc5d1429f7d2fd72b7d36c1692a41926b5d032ca7225ea"
  else
    url "https://github.com/runwork-ai/desktop/releases/download/v0.23.1/Runwork_0.23.1_x64.dmg"
    sha256 "3619291d2fd4f267fede05fe732dd33f9d94814b54b5e118e2121255930d456c"
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
