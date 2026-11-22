cask "runwork-desktop" do
  version "0.33.2"

  if Hardware::CPU.arm?
    url "https://github.com/runwork-ai/desktop/releases/download/v0.33.2/Runwork_0.33.2_aarch64.dmg"
    sha256 "a42290eedbdfe016e24a1e4d62a4b3d48949cf639dfe678dee5f945a3fd5afb1"
  else
    url "https://github.com/runwork-ai/desktop/releases/download/v0.33.2/Runwork_0.33.2_x64.dmg"
    sha256 "6ef4142084219841b7cd9475545f5a3edac455f850c4aeda6dc15c0b25641055"
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
