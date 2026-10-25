cask "mica" do
  version "1.2.0"
  sha256 "7634e1d52cc836080a1c9bc5eaa82eb5407333c7c42cc000484990c3f2a68ab3"

  url "https://github.com/angad/Mica/releases/download/v#{version}/Mica-#{version}-universal.zip"
  name "Mica"
  desc "Menu bar system monitor, battery health insights, and stay-awake controls"
  homepage "https://github.com/angad/Mica"

  depends_on macos: :monterey

  app "Mica.app"

  uninstall quit: "sg.angad.Mica"

  zap trash: [
    "~/Library/Application Support/Mica",
    "~/Library/LaunchAgents/sg.angad.Mica.plist",
    "~/Library/Preferences/sg.angad.Mica.plist",
    "~/Library/Saved Application State/sg.angad.Mica.savedState",
  ]

  caveats <<~EOS
    Mica requires macOS 12.3 or newer.
    This preview is ad-hoc signed and is not notarized by Apple.
    macOS may block the first launch. Review the first-open instructions:
      https://github.com/angad/Mica#install

    Optional iPhone/iPad diagnostics require separately installed tools:
      brew install libimobiledevice
  EOS
end
