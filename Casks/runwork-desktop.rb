cask "runwork-desktop" do
  version "0.6.3"

  if Hardware::CPU.arm?
    url "https://github.com/runwork-ai/desktop/releases/download/v0.6.3/Runwork_0.6.3_aarch64.dmg"
    sha256 "a4605269e832732c358cc8dd49cff14685b224fc43e9e09cf26af6645731d74c"
  else
    url "https://github.com/runwork-ai/desktop/releases/download/v0.6.3/Runwork_0.6.3_x64.dmg"
    sha256 "7e86b5bfd818f896f28c22cf2ef4a8bf19c0ef94a56080ef81b8f3d25a0eb12f"
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
