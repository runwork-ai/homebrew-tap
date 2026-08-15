cask "runwork-desktop" do
  version "0.18.0"

  if Hardware::CPU.arm?
    url "https://github.com/runwork-ai/desktop/releases/download/v0.18.0/Runwork_0.18.0_aarch64.dmg"
    sha256 "96d5d0404c28453b50ed24642bfe7b05b88092f35442c7880e8a00e5b956254f"
  else
    url "https://github.com/runwork-ai/desktop/releases/download/v0.18.0/Runwork_0.18.0_x64.dmg"
    sha256 "98876e6264f760a38f380ca6d26853237a72f75e604926df491fbf8eca5185bf"
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
