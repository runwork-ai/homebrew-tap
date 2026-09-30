cask "runwork-desktop" do
  version "0.30.0"

  if Hardware::CPU.arm?
    url "https://github.com/runwork-ai/desktop/releases/download/v0.30.0/Runwork_0.30.0_aarch64.dmg"
    sha256 "6fb1f1f5fe7e87cb172377ebbe869f640c45aefb1fe78653c042e58c9df437b6"
  else
    url "https://github.com/runwork-ai/desktop/releases/download/v0.30.0/Runwork_0.30.0_x64.dmg"
    sha256 "1493896dc6bfa86e0bc6acb808385c49d394bef6019980fc473c0c40972f84e2"
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
