cask 'renode' do
  version '1.13.2'
  sha256 '076f33ba16f7b8fee35b3105c7a71e96d5643fd8b12e2da38d18f431a360c28b'

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
