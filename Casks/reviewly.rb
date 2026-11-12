cask "reviewly" do
  version "1.1.7"
  sha256 "a8d2fbe0c43ddc3f900312c6a8f06a9c7b2e0dad0154d076fe5f7f47b35287ff"

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
