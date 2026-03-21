cask 'renode' do
  version '1.16.1'
  sha256 '7879b2851b446ff99e1d3910b499af278fbd76a3fa8fe5c0d379f30afa0c4ed1'

  url "https://github.com/renode/renode/releases/download/v#{version}/renode_#{version}.dmg",
      verified: "github.com/renode/renode/"
  name 'Renode'
  desc "Antmicro's virtual development framework for complex embedded systems"
  homepage 'https://renode.io'

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on formula: "mono"

  app 'Renode.app'
end
