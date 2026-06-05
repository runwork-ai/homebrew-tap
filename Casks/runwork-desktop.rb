cask "runwork-desktop" do
  version "0.11.0"

  if Hardware::CPU.arm?
    url "https://github.com/runwork-ai/desktop/releases/download/v0.11.0/Runwork_0.11.0_aarch64.dmg"
    sha256 "d3ddb067ac3fd28ddb5af5accc9e19d85578b75c6be4990b3981d28393e322ac"
  else
    url "https://github.com/runwork-ai/desktop/releases/download/v0.11.0/Runwork_0.11.0_x64.dmg"
    sha256 "698feb405c7a141c5b9283328032544597f7604a1c20c514ff9ee3e6f80ee149"
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
