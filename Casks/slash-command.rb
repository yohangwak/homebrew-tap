cask "slash-command" do
  version "0.2.15"
  sha256 "8ff020c1f632326bf6d405ec4312f96a7697e71256ca5b65ca49ccee81701887"

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
