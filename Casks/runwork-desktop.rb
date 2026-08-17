cask "runwork-desktop" do
  version "0.19.1"

  if Hardware::CPU.arm?
    url "https://github.com/runwork-ai/desktop/releases/download/v0.19.1/Runwork_0.19.1_aarch64.dmg"
    sha256 "6778ef933016c9c6d0c8be9f270fe3f6959174e5e1575c5d69668835e9029974"
  else
    url "https://github.com/runwork-ai/desktop/releases/download/v0.19.1/Runwork_0.19.1_x64.dmg"
    sha256 "6c6cd5d01d5bc8c50c584c29950397945d302720c12111ebe5eca0e201b8a128"
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
