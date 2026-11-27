cask "slash-command" do
  version "0.2.21"
  sha256 "117e699a78df921d96a5cb23af77a0c50877f83a2d3de2092aff8423483ccab1"

  url "https://github.com/yohangwak/slash-command/releases/download/v#{version}/Slash-Command.zip"
  name "Slash Command"
  desc "Switch a coding agent's model and effort with one hotkey"
  homepage "https://github.com/yohangwak/slash-command"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura

  app "Slash Command.app"
  binary "#{appdir}/Slash Command.app/Contents/MacOS/slashcommand-cli", target: "slashcommand"

  uninstall quit: "com.yohangwak.slashcommand"

  zap trash: [
    "~/.config/slashcommand",
    "~/Library/Logs/SlashCommand",
    "~/Library/Preferences/com.yohangwak.slashcommand.plist",
  ]
end
