cask "qljupyter" do
  version "1.0.0"
  sha256 "247fcd5cfbf6f9abe7335173a13bf85bfc6e96fe5efd20826465c3d512c949c6"

  url "https://github.com/Yike-Ye/QLJupyter/releases/download/v#{version}/QLJupyter.zip"
  name "QLJupyter"
  desc "Quick Look previews for Jupyter notebooks"
  homepage "https://github.com/Yike-Ye/QLJupyter"

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "QLJupyter.app"

  uninstall quit: "com.example.QLJupyter"

  caveats <<~EOS
    The upstream app is ad-hoc signed and not notarized. This cask preserves
    macOS quarantine and does not bypass Gatekeeper. If macOS blocks opening,
    review the app in System Settings > Privacy & Security before allowing it.

    Open QLJupyter once to register its Quick Look extension, then inspect it
    in System Settings > General > Login Items & Extensions > Quick Look.
    Other extensions claiming Jupyter notebooks may compete with this one.
    User preferences are preserved on uninstall.
  EOS
end
