cask "runwork-desktop" do
  version "0.22.2"

  if Hardware::CPU.arm?
    url "https://github.com/runwork-ai/desktop/releases/download/v0.22.2/Runwork_0.22.2_aarch64.dmg"
    sha256 "6b71a86ab4071e595e8418ac8dc975feda86e5b96bb4924e76e500eca70c8bc7"
  else
    url "https://github.com/runwork-ai/desktop/releases/download/v0.22.2/Runwork_0.22.2_x64.dmg"
    sha256 "c8d39140f590dcbbbe7aed277d47ce1e61a4b1a01fbd5086af839f4a866f48ed"
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
