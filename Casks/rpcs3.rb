cask 'rpcs3' do
  version '0.0.42-20024'
  sha256 '6abfa0437fda6aeed384befb288377b6854d01b58a5b80da54314d6fab8ab719'

  url "https://github.com/RPCS3/rpcs3-binaries-mac/releases/download/build-9e86f165d1711b9429d48b0487e7bc5ba0cc9c6c/rpcs3-v#{version}-9e86f165_macos.7z"
  name 'RPCS3'
  desc "multi-platform open-source PS3 emulator/debugger"
  homepage 'https:/rpcs3.net/'

  livecheck do
    url :url
    strategy :github_latest
  end

  app 'RPCS3.app'
end
