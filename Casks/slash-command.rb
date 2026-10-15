cask "slash-command" do
  version "0.1.0"
  sha256 "c2a84f10afb5c6df8215ea8d3a88a34730ad2e82f49e4cfb78769a45b4fc12f1"

  url "https://github.com/yohangwak/slash-command/releases/download/v#{version}/Slash-Command.zip"
  name "Slash Command"
  desc "Switch a coding agent's model and effort with one hotkey"
  homepage "https://github.com/yohangwak/slash-command"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :ventura"

  app "Slash Command.app"
  binary "#{appdir}/Slash Command.app/Contents/MacOS/slashcommand-cli", target: "slashcommand"

  uninstall quit: "com.yohangwak.slashcommand"

  zap trash: [
    "~/.config/slashcommand",
    "~/Library/Logs/SlashCommand",
    "~/Library/Preferences/com.yohangwak.slashcommand.plist",
  ]
end
