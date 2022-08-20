cask 'kathara' do
  arch = Hardware::CPU.intel? ? "x86_64" : "arm64"
#  choice = Hardware::CPU.intel? ? "x86" : "arm"

  version '3.5.0'
  if Hardware::CPU.intel?
    sha256 '5f2ffe1e45eafc2b0d329af80b009089ea15f0e57180792da2322cfb226eeae7'
  else
    sha256 'b6b5b210034d9c488a72b57f26ea9e356e3df04c7e364e8c960f46449008d7e4'
  end

  url "https://github.com/KatharaFramework/Kathara/releases/download/#{version}/Kathara-macos-installer-#{arch}-#{version}.pkg",
      verified: "github.com/KatharaFramework/Kathara/"
  #appcast 'https://github.com/KatharaFramework/Kathara/releases'
  name 'Kathara'
  desc "A lightweight container-based network emulation system"
  homepage 'https://www.kathara.org'

  livecheck do
    url :url
    strategy :github_latest
  end

  pkg "Kathara-macos-installer-#{arch}-#{version}.pkg"

  uninstall pkgutil: "org.kathara.kathara",
            script:  {
              executable: "/Library/Kathara/uninstall.sh",
              sudo:       true,
            }
end
