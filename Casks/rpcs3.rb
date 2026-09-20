cask 'rpcs3' do
  version '0.0.42-20024'
  sha256 'f2fadb2886c4686d1b38fc36046b75c9897d3dea9237aab02ab57f6af265fa37'

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
