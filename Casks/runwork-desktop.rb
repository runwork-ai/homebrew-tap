cask "runwork-desktop" do
  version "0.2.4"

  if Hardware::CPU.arm?
    url "https://github.com/runwork-ai/desktop/releases/download/v0.2.4/Runwork_0.2.4_aarch64.dmg"
    sha256 "5f73ebb0cb67e8762eb3c8ffe6485485ee29697697197940098170a9534b1ffb"
  else
    url "https://github.com/runwork-ai/desktop/releases/download/v0.2.4/Runwork_0.2.4_x64.dmg"
    sha256 "39a61b1b91ce4f21d7208e3e11a544a15fc2c275a21cee86a17e339831b10347"
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
