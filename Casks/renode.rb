cask 'renode' do
  version '1.16.0'
  sha256 '78cbdea92e14dfc17b6adb5235ef2b83a241205a75089361124aa6034f384661'

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
