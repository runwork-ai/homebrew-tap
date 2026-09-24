cask "runwork-desktop" do
  version "0.25.3"

  if Hardware::CPU.arm?
    url "https://github.com/runwork-ai/desktop/releases/download/v0.25.3/Runwork_0.25.3_aarch64.dmg"
    sha256 "ea8e81f71ae80ccf477eaf7005b1641cff29c50478b4ea885271f0223c8de810"
  else
    url "https://github.com/runwork-ai/desktop/releases/download/v0.25.3/Runwork_0.25.3_x64.dmg"
    sha256 "787e4bca03dfb4d8c94b2496b461c67e8517e604f6b09154bcb536762c66d1ff"
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
