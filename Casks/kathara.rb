cask 'kathara' do
  arch = Hardware::CPU.intel? ? "x86_64" : "arm64"
#  choice = Hardware::CPU.intel? ? "x86" : "arm"

  version '3.3.0'
  if Hardware::CPU.intel?
    sha256 'dbbd3bbe099911d15a5e6f71ba97263e7084e196fa8f62267a6ac411031f94a2'
  else
    sha256 'c8c51b003103a0dacacb0b36eb6efd287082d74309183217f6ffa2b61370c8a6'
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
