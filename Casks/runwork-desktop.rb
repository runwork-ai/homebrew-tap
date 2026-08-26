cask "runwork-desktop" do
  version "0.21.5"

  if Hardware::CPU.arm?
    url "https://github.com/runwork-ai/desktop/releases/download/v0.21.5/Runwork_0.21.5_aarch64.dmg"
    sha256 "67a8bfca606a338d53ac263f3be9b8e4a14201d0348f4e1277a675f442cdf54d"
  else
    url "https://github.com/runwork-ai/desktop/releases/download/v0.21.5/Runwork_0.21.5_x64.dmg"
    sha256 "01e5743e440891845791e43488fd1ad8161995a0fa4fc3e65f28d3b10876675b"
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
