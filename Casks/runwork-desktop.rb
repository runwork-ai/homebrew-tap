cask "runwork-desktop" do
  version "0.23.2"

  if Hardware::CPU.arm?
    url "https://github.com/runwork-ai/desktop/releases/download/v0.23.2/Runwork_0.23.2_aarch64.dmg"
    sha256 "a88254ba64afbe40eaf6d2a53aafa6c287dcbcca410d10ee46eadaf16a917050"
  else
    url "https://github.com/runwork-ai/desktop/releases/download/v0.23.2/Runwork_0.23.2_x64.dmg"
    sha256 "6992644d4278258a32ac945c9713c0cd283461a3cbed4e25ec3bcdf5972aae7e"
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
