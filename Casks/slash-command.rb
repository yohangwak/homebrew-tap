cask "slash-command" do
  version "0.2.6"
  sha256 "3faa0c45beeb2b919ed5cba911d414d8e6aef4b28e1c061f9e0eab6ed35e3f8d"

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
