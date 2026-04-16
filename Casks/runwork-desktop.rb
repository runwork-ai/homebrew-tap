cask "runwork-desktop" do
  version "0.4.7"

  if Hardware::CPU.arm?
    url "https://github.com/runwork-ai/desktop/releases/download/v0.4.7/Runwork_0.4.7_aarch64.dmg"
    sha256 "38f0c8079102c685f877c6be75716d67e78fd72fb6f9325b66b928b1f7459b62"
  else
    url "https://github.com/runwork-ai/desktop/releases/download/v0.4.7/Runwork_0.4.7_x64.dmg"
    sha256 "21fcf42b7c28733454ee575a2d4f57931b95a0a586ecf824c6d5416eeeb2137d"
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
