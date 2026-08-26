cask "runwork-desktop" do
  version "0.21.6"

  if Hardware::CPU.arm?
    url "https://github.com/runwork-ai/desktop/releases/download/v0.21.6/Runwork_0.21.6_aarch64.dmg"
    sha256 "490d084215d554f96af3b5993da5461747f0430e1670044a74f8688f4ec0ed53"
  else
    url "https://github.com/runwork-ai/desktop/releases/download/v0.21.6/Runwork_0.21.6_x64.dmg"
    sha256 "c81c4bd2fd1c6b277c7010cd38c322ff54290ae5655b8a7e0b96bd03247deb0c"
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
