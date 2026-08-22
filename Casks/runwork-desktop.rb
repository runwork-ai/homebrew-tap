cask "runwork-desktop" do
  version "0.21.3"

  if Hardware::CPU.arm?
    url "https://github.com/runwork-ai/desktop/releases/download/v0.21.3/Runwork_0.21.3_aarch64.dmg"
    sha256 "6e7706f0395d195af3ac12c3d56a8155b31e281231b63995b3decb487b8e8186"
  else
    url "https://github.com/runwork-ai/desktop/releases/download/v0.21.3/Runwork_0.21.3_x64.dmg"
    sha256 "78d73d3b6afb847ddbbe5af742f60642670866c5fbeb77a33cdceb04607e792d"
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
