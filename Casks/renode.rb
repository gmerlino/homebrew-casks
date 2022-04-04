cask 'renode' do
  version '1.12.0'
  sha256 'ff22c99513dba528288a9feb0adff27f9ee1ab367b389f819e511a30434ccfe9'

  url "https://github.com/renode/renode/releases/download/v#{version}/renode_#{version}.dmg",
      verified: "github.com/renode/renode/"
  name 'Renode'
  desc "Antmicro's virtual development framework for complex embedded systems"
  homepage 'https://renode.io'

  livecheck do
    url :url
    strategy :github_latest
  end

  app 'Renode.app'
end
