cask "runwork-desktop" do
  version "0.5.1"

  if Hardware::CPU.arm?
    url "https://github.com/runwork-ai/desktop/releases/download/v0.5.1/Runwork_0.5.1_aarch64.dmg"
    sha256 "8cd1201472c4bd17666f915fe6ae6356d58027588e79ee3339754b549a64a4ce"
  else
    url "https://github.com/runwork-ai/desktop/releases/download/v0.5.1/Runwork_0.5.1_x64.dmg"
    sha256 "7234b267c9f2806abca30170a9418e2567d084390d4ec8ea61c172c52f8c1dae"
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
