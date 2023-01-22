cask 'kathara' do
  arch = Hardware::CPU.intel? ? "x86_64" : "arm64"

  version '3.5.5'
  if Hardware::CPU.intel?
    sha256 'eea5c951a3365d9921c824341612fe7ad40db5982a182fda37916e086930cc7a'
  else
    sha256 'e2583c03e3989a8bb05239637b18a5bd25f7df093cd9354c60bff1f7d263f007'
  end

  url "https://github.com/KatharaFramework/Kathara/releases/download/#{version}/Kathara-macos-installer-#{arch}-#{version}.pkg",
      verified: "github.com/KatharaFramework/Kathara/"
  name 'Kathara'
  desc "A lightweight container-based network emulation system"
  homepage 'https://www.kathara.org'

  livecheck do
    url :url
    strategy :github_latest
  end

  pkg "Kathara-macos-installer-#{arch}-#{version}.pkg"

  uninstall pkgutil: "org.kathara.kathara",
            script:  {
              executable: "/Library/Kathara/uninstall.sh",
              sudo:       true,
            }
end
