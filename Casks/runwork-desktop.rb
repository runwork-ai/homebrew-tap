cask "runwork-desktop" do
  version "0.22.1"

  if Hardware::CPU.arm?
    url "https://github.com/runwork-ai/desktop/releases/download/v0.22.1/Runwork_0.22.1_aarch64.dmg"
    sha256 "c640cdd01e2139c375f96d4cd17256ced3de693fc1aec16f391f5ca2e0458e92"
  else
    url "https://github.com/runwork-ai/desktop/releases/download/v0.22.1/Runwork_0.22.1_x64.dmg"
    sha256 "845773c51208ad4e570f62acf260343d35bdd55ee930ea4163c5af795df060d5"
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
