cask 'rpcs3' do
  version '0.0.37-18106'
  sha256 '3806fc15323e2b5dee6c9194593b041698df48354d98cadc6c7b007a09e07980'

  url "https://github.com/RPCS3/rpcs3-binaries-mac-arm64/releases/download/build-8e34d7885c325ebb20e01ceef1d2faf47a55609d/rpcs3-v#{version}-8e34d788_macos_arm64.7z",
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
