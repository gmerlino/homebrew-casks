cask 'renode' do
  version '1.15.0'
  sha256 '653de0a549291ac2216b8822b6e1879ea13309fb222f2ec8de9f6ce7dd15b471'

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
