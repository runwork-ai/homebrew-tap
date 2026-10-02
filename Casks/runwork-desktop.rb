cask "runwork-desktop" do
  version "0.32.0"

  if Hardware::CPU.arm?
    url "https://github.com/runwork-ai/desktop/releases/download/v0.32.0/Runwork_0.32.0_aarch64.dmg"
    sha256 "e3ca5ab26bc75e70d3f889d17b251efd4590f2a365eae173e0851f0aef740dba"
  else
    url "https://github.com/runwork-ai/desktop/releases/download/v0.32.0/Runwork_0.32.0_x64.dmg"
    sha256 "20a6147ff9d5b46121c3f152a34a15e03718e29b67aa9e1a8aaef2039314e860"
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
