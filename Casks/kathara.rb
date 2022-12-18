cask 'kathara' do
  arch = Hardware::CPU.intel? ? "x86_64" : "arm64"

  version '3.5.1'
  if Hardware::CPU.intel?
    sha256 '1302a33f63f91835a96d7413791d8bbc68779a31015ce872f60cdda44de93dc5'
  else
    sha256 '4c3570a188fad80b501afd830f97a23c3f3c729cc0abe51d0420dfd7a4b478b7'
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
