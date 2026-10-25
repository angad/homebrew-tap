cask "mica" do
  version "1.3.0"
  sha256 "720d108c31954e9ccc610721dd6e883a83b68c6f3c06db21074fc9c8b5a56a01"

  url "https://github.com/angad/Mica/releases/download/v#{version}/Mica-#{version}-universal.zip"
  name "Mica"
  desc "Menu bar system monitor, battery diagnostics, and sleep controls"
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
