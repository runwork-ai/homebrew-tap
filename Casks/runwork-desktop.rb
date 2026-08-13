cask "runwork-desktop" do
  version "0.17.0"

  if Hardware::CPU.arm?
    url "https://github.com/runwork-ai/desktop/releases/download/v0.17.0/Runwork_0.17.0_aarch64.dmg"
    sha256 "359e158bb2be17298e10cea7a11fed335833be40cebddaa72cd3befc4f256a25"
  else
    url "https://github.com/runwork-ai/desktop/releases/download/v0.17.0/Runwork_0.17.0_x64.dmg"
    sha256 "b87aa069e70ab0c9abeacd01d1b15fd85e2234750aef1bf5e31db3c63e9a7f74"
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
