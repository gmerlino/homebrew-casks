cask "mechvibes-dx" do
  version "0.8.3"
  sha256 "71692733371530fb78fc9e7afb54680a1d44e62ba8338580edba384c7b13e841"

  url "https://github.com/hainguyents13/mechvibes-dx/releases/download/v#{version}/mechvibes-dx-#{version}-macos-arm64.dmg"
  name "MechvibesDX"
  desc "Mechanical keyboard and mouse sound simulator"
  homepage "https://github.com/hainguyents13/mechvibes-dx"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on :macos

  app "MechvibesDX.app"

  uninstall quit: "com.hainguyents13.mechvibesdx"

  zap trash: [
    "~/Library/Application Support/Mechvibes",
    "~/Library/Preferences/com.hainguyents13.mechvibesdx.plist",
  ]
end
