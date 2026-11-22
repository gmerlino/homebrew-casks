cask "ebookql" do
  version "0.7.4"
  sha256 "9c372ece70a2982e63c753579030a20a3e4b368e43536f37728cf0b49abe3d28"

  url "https://github.com/rocaltair/EBookQL/releases/download/v#{version}/EBookQL-#{version}.dmg"
  name "EBookQL"
  desc "Quick Look previews and thumbnails for ebooks"
  homepage "https://github.com/rocaltair/EBookQL"

  depends_on macos: :sonoma

  app "EBookQL.app"

  uninstall quit: "com.rocaltair.EBookQL"

  caveats <<~EOS
    The upstream app is ad-hoc signed and not notarized. This cask preserves
    macOS quarantine and does not bypass Gatekeeper. If macOS blocks opening,
    review the app in System Settings > Privacy & Security before allowing it.

    Open EBookQL once to register its Quick Look extensions, then inspect them
    in System Settings > General > Login Items & Extensions > Quick Look.
    Disable its optional Markdown extensions if another app handles Markdown.
    User preferences and reading history are preserved on uninstall.
  EOS
end
