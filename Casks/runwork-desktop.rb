cask "runwork-desktop" do
  version "0.11.1"

  if Hardware::CPU.arm?
    url "https://github.com/runwork-ai/desktop/releases/download/v0.11.1/Runwork_0.11.1_aarch64.dmg"
    sha256 "367f25da33b8715342a923325819b2b6ca6f15b636c0efaf4567d45583afc7d8"
  else
    url "https://github.com/runwork-ai/desktop/releases/download/v0.11.1/Runwork_0.11.1_x64.dmg"
    sha256 "0883fe6d61628ad7db4f65b38a953cfd260577b3335d0079bcf6083b8d0815b4"
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
