cask "mechvibes" do
  arch arm: "arm64", intel: "x86_64"

  version "3.5.11"
  sha256 arm:   "84dc0b0de73c2a1cbde77ed1db479033ebd01f0e2abb1e0d402277a9a9964ce4",
         intel: "d1567047379c0174136c281e0d6e966a4fcb3b1e5b1823c3e39e848c956871b3"

  url "https://github.com/hainguyents13/mechvibes/releases/download/v#{version}/mechvibes-#{version}-macos-#{arch}.dmg"
  name "Mechvibes"
  desc "Mechanical keyboard and mouse sound simulator"
  homepage "https://mechvibes.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "Mechvibes.app"

  uninstall quit: "com.hainguyents13.mechvibesdx"

  zap trash: [
    "~/Library/Application Support/Mechvibes",
    "~/Library/Preferences/com.hainguyents13.mechvibesdx.plist",
  ]
end
