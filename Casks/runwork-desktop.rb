cask "runwork-desktop" do
  version "0.4.6"

  if Hardware::CPU.arm?
    url "https://github.com/runwork-ai/desktop/releases/download/v0.4.6/Runwork_0.4.6_aarch64.dmg"
    sha256 "52847113f9ddf0abd31f63009ffdde31a7d00efffab7f91821b0f495101d7f84"
  else
    url "https://github.com/runwork-ai/desktop/releases/download/v0.4.6/Runwork_0.4.6_x64.dmg"
    sha256 "f25a24c3af0bd3f53b67133bf1e74303377ea3a2126b583c61a4f228462002cc"
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
