cask "runwork-desktop" do
  version "0.6.2"

  if Hardware::CPU.arm?
    url "https://github.com/runwork-ai/desktop/releases/download/v0.6.2/Runwork_0.6.2_aarch64.dmg"
    sha256 "431425fe2eb5e5e5ef74162d537432ab54d7718bc5889ffb814714088a26832a"
  else
    url "https://github.com/runwork-ai/desktop/releases/download/v0.6.2/Runwork_0.6.2_x64.dmg"
    sha256 "edc24263d06dcd099747749c5411222f1fed095e1cc943ebfb2ccbf7493cf620"
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
