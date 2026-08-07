cask "runwork-desktop" do
  version "0.14.3"

  if Hardware::CPU.arm?
    url "https://github.com/runwork-ai/desktop/releases/download/v0.14.3/Runwork_0.14.3_aarch64.dmg"
    sha256 "cc8e7ed7d538e0270d4b3634a55905d177b9d2bb0554b1b329ebf4dadcc76a84"
  else
    url "https://github.com/runwork-ai/desktop/releases/download/v0.14.3/Runwork_0.14.3_x64.dmg"
    sha256 "fe3728f99d7f71045f9ceb4453632deef532dcff7517bc035afdf0d4197c2358"
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
