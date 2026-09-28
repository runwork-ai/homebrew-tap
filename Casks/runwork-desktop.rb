cask "runwork-desktop" do
  version "0.29.0"

  if Hardware::CPU.arm?
    url "https://github.com/runwork-ai/desktop/releases/download/v0.29.0/Runwork_0.29.0_aarch64.dmg"
    sha256 "fc47d3d484f7e7a267802ff20202dce2b709372a555748cd2350783c306e46c8"
  else
    url "https://github.com/runwork-ai/desktop/releases/download/v0.29.0/Runwork_0.29.0_x64.dmg"
    sha256 "6d3efe2753e458d51b5d0281d9ecb1fd26e23edfb73756a7ea20ba898e573d65"
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
