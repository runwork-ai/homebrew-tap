cask "runwork-desktop" do
  version "0.25.0"

  if Hardware::CPU.arm?
    url "https://github.com/runwork-ai/desktop/releases/download/v0.25.0/Runwork_0.25.0_aarch64.dmg"
    sha256 "67e45ac42dd932d57ea9ed866d496081e7e938786d7abbf8afc2681c1f218a83"
  else
    url "https://github.com/runwork-ai/desktop/releases/download/v0.25.0/Runwork_0.25.0_x64.dmg"
    sha256 "963dd9e834f09c8754e032dc826f669e771ce149ffb1f4cf2749483d5afd7932"
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
