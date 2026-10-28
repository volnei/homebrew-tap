cask "reviewly" do
  version "1.0.4"
  sha256 "49611b6d6aa7398aa11e4ac0812e11c09af07daefd923e94a4bb4771ef72d620"

  url "https://github.com/volnei/reviewly/releases/download/v#{version}/Reviewly-#{version}-macos.dmg"
  name "Reviewly"
  desc "Local-first desktop app for reviewing GitHub pull requests"
  homepage "https://github.com/volnei/reviewly"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on :macos

  app "Reviewly.app"

  zap trash: [
    "~/Library/Application Support/dev.volnei.reviewly",
    "~/Library/Caches/dev.volnei.reviewly",
    "~/Library/Preferences/dev.volnei.reviewly.plist",
    "~/Library/Saved Application State/dev.volnei.reviewly.savedState",
    "~/Library/WebKit/dev.volnei.reviewly",
  ]
end
