cask 'kathara' do
  arch = Hardware::CPU.intel? ? "x86_64" : "arm64"

  version '3.7.3'
  if Hardware::CPU.intel?
    sha256 'bd74e154de6035ac2410d57e681d0c5316a6347e8559454902ba339c883559f4'
  else
    sha256 '83ebc33554caf86bbf9bd02590b5033d86a8a2ce066fe3eb0f00052a44e8168c'
  end

  url "https://github.com/KatharaFramework/Kathara/releases/download/#{version}/Kathara-macos-installer-#{arch}-#{version}.pkg",
      verified: "github.com/KatharaFramework/Kathara/"
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
