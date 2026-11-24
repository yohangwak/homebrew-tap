cask "slash-command" do
  version "0.2.19"
  sha256 "bd30aa74ca95479a6146f2ccaae9fa13eda9d8fc4bf279ac37c33df59d6e2eaf"

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
