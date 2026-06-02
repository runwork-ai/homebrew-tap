cask "runwork-desktop" do
  version "0.10.1"

  if Hardware::CPU.arm?
    url "https://github.com/runwork-ai/desktop/releases/download/v0.10.1/Runwork_0.10.1_aarch64.dmg"
    sha256 "1f83fb8187df205a3a9bd32aeba4f8d0ab9bb4d6f9806e197d49e80633b1eb55"
  else
    url "https://github.com/runwork-ai/desktop/releases/download/v0.10.1/Runwork_0.10.1_x64.dmg"
    sha256 "9b88b26b7803710a8f8ab084eb4dcbae9e915a1ca8ac4aed6a528f459692391d"
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
