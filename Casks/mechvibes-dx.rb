cask "mechvibes-dx" do
  version "0.8.4"
  sha256 "bbaad9ff2de01c18b50562b4ce9085db456eb066402276c21f12180ff1342ee4"

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
