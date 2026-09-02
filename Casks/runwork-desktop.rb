cask "runwork-desktop" do
  version "0.23.3"

  if Hardware::CPU.arm?
    url "https://github.com/runwork-ai/desktop/releases/download/v0.23.3/Runwork_0.23.3_aarch64.dmg"
    sha256 "1c09dd3e59db96ee9fc90ca4590e5bb3bc4fee7d4089dee542c6c2e6e7bab48e"
  else
    url "https://github.com/runwork-ai/desktop/releases/download/v0.23.3/Runwork_0.23.3_x64.dmg"
    sha256 "b772556c8199294614bc2babb6ef09e7c2dadb36c0fa255997c3bb7793e0ba6b"
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
