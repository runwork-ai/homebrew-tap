cask "runwork-desktop" do
  version "0.2.1"

  if Hardware::CPU.arm?
    url "https://github.com/runwork-ai/desktop/releases/download/v0.2.1/Runwork_0.1.0_aarch64.dmg"
    sha256 "c066b1e4ac7978daca2053624bda08282a5bb5190c07411ea0d2ff19d26f08b5"
  else
    url "https://github.com/runwork-ai/desktop/releases/download/v0.2.1/Runwork_0.1.0_x64.dmg"
    sha256 "60ba343f683666af9611a7d5b953823e1cba6973d9871156dd81c15c6617b73b"
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
