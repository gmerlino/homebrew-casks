cask "claude-science" do
  version :latest
  sha256 :no_check

  url "https://downloads.claude.ai/claude-science/latest/mac-arm64.dmg"
  name "Claude Science"
  desc "Anthropic's AI workbench for scientific research"
  homepage "https://www.anthropic.com/news/claude-science-ai-workbench"

  auto_updates true

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "Claude Science.app"

  uninstall quit: "com.anthropic.operon"

  zap trash: [
    "~/.claude-science",
    "~/Library/Application Support/Claude Science",
    "~/Library/Preferences/com.anthropic.operon.plist",
    "~/Library/Saved Application State/com.anthropic.operon.savedState",
  ]
end
