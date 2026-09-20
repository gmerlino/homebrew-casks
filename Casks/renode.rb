cask 'renode' do
  version '1.17.0'
  sha256 '63b1fb691207f503cea937e4ec8fad3e068a517d0abac3c24c0206c62f6c4d12'

  url "https://github.com/renode/renode/releases/download/v#{version}/renode-#{version}.osx-arm64-portable.dmg"
  name 'Renode'
  desc "Antmicro's virtual development framework for complex embedded systems"
  homepage 'https://renode.io'

  livecheck do
    url :url
    strategy :github_latest
  end

  app 'Renode.app'
end
