cask 'rpcs3' do
  version '0.0.31-16206'
  sha256 'e1cb2334569e3ac44e149a6cfab1a974fb8f380980b77445cb2b4c82b7deb4fd'

  url "https://github.com/RPCS3/rpcs3-binaries-mac/releases/download/build-77485747f19b22a6f4c935b8f04cb1f690a85227/rpcs3-v#{version}-77485747_macos.7z",
      verified: "github.com/RPCS3/rpcs3-binaries-mac/"
  name 'RPCS3'
  desc "multi-platform open-source PS3 emulator/debugger"
  homepage 'https:/rpcs3.net/'

  livecheck do
    url :url
    strategy :github_latest
  end

  app 'RPCS3.app'
end
